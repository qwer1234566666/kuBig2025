from flask import Flask, render_template, request, redirect, session, url_for, make_response
from werkzeug.utils import secure_filename
from flask_sqlalchemy import SQLAlchemy
import os, requests, cv2, mediapipe as mp, numpy as np
from datetime import timedelta
from PIL import Image
from io import BytesIO

app = Flask(__name__)
app.secret_key = os.environ.get('SECRET_KEY', 'yjh')

BASE_DIR = os.path.dirname(os.path.abspath(__file__))
db_path = os.path.join(BASE_DIR, 'mmm.db')
app.config['UPLOAD_FOLDER'] = os.path.join(BASE_DIR, 'static/uploads/')
app.config['SQLALCHEMY_DATABASE_URI'] = f'sqlite:///{db_path}'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.permanent_session_lifetime = timedelta(minutes=5)

db = SQLAlchemy(app)
os.makedirs(app.config['UPLOAD_FOLDER'], exist_ok=True)

# 네이버 API 설정
NAVER_CLIENT_ID = "6Y2YU4EFSNpFbgPNMEZ5"
NAVER_CLIENT_SECRET = "xXfIZNGB8s"

categories = ["남성 셔츠", "남성 슈트", "남성 카라티", "남성 반팔티", "남성 맨투맨", "남성 니트"]

class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    kakao_id = db.Column(db.String(128), unique=True, nullable=False)
    nickname = db.Column(db.String(128), nullable=False)

def search_naver_shopping(keyword, display=1):
    url = "https://openapi.naver.com/v1/search/shop.json"
    headers = {"X-Naver-Client-Id": NAVER_CLIENT_ID, "X-Naver-Client-Secret": NAVER_CLIENT_SECRET}
    params = {"query": keyword, "display": display, "sort": "sim"}
    response = requests.get(url, headers=headers, params=params)
    return response.json().get('items', []) if response.status_code == 200 else []

def analyze_pose(image_path):
    mp_pose = mp.solutions.pose
    image = cv2.imread(image_path)
    rgb_image = cv2.cvtColor(image, cv2.COLOR_BGR2RGB)
    pose = mp_pose.Pose(static_image_mode=True, min_detection_confidence=0.5)
    results = pose.process(rgb_image)
    landmarks = {}
    if results.pose_landmarks:
        for idx, lm in enumerate(results.pose_landmarks.landmark):
            landmarks[idx] = (int(lm.x * image.shape[1]), int(lm.y * image.shape[0]))
    return landmarks

@app.route('/')
def home():
    return render_template('login.html')

@app.route('/login')
def login():
    kakao_rest_api_key = os.environ.get('KAKAO_REST_KEY', '372b9ff0b3185bf66106edc076409718')
    redirect_uri = url_for('oauth', _external=True)
    kakao_auth_url = (
        f"https://kauth.kakao.com/oauth/authorize?"
        f"client_id={kakao_rest_api_key}&redirect_uri={redirect_uri}&response_type=code&prompt=login"
    )
    return redirect(kakao_auth_url)

@app.route('/oauth')
def oauth():
    code = request.args.get('code')
    if not code:
        return "코드를 받지 못했습니다", 400

    kakao_rest_api_key = os.environ.get('KAKAO_REST_KEY', '372b9ff0b3185bf66106edc076409718')
    redirect_uri = url_for('oauth', _external=True)

    token_response = requests.post(
        'https://kauth.kakao.com/oauth/token',
        headers={'Content-type':'application/x-www-form-urlencoded;charset=utf-8'},
        data={
            'grant_type': 'authorization_code',
            'client_id': kakao_rest_api_key,
            'redirect_uri': redirect_uri,
            'code': code
        }
    )

    token_json = token_response.json()

    if 'access_token' not in token_json:
        return f"토큰 요청 실패: {token_json.get('error_description', token_json)}", 400

    access_token = token_json['access_token']
    user_info_response = requests.get(
        'https://kapi.kakao.com/v2/user/me',
        headers={'Authorization': f'Bearer {access_token}'}
    )

    user_info = user_info_response.json()

    kakao_id = str(user_info['id'])
    nickname = user_info['properties']['nickname']

    user = User.query.filter_by(kakao_id=kakao_id).first()
    if not user:
        user = User(kakao_id=kakao_id, nickname=nickname)
        db.session.add(user)
        db.session.commit()

    session['user'] = {'id': kakao_id, 'nickname': nickname}

    return redirect(url_for('upload'))

@app.route('/upload', methods=['GET', 'POST'])
def upload():
    if request.method == 'POST':
        file = request.files['photo']
        filename = secure_filename(file.filename)
        file_path = os.path.join(app.config['UPLOAD_FOLDER'], filename)
        file.save(file_path)
        session['photo_path'] = file_path
        return redirect(url_for('recommend'))
    return render_template('upload.html')

@app.route('/recommend')
def recommend():
    if 'photo_path' not in session:
        return redirect(url_for('upload'))
    items = []
    for cat in categories:
        category_items = search_naver_shopping(cat)
        if category_items:
            items.append(category_items[0])  # 각 카테고리에서 하나만 선택
    recommended_items = [{
        'name': item['title'].replace("<b>", "").replace("</b>", ""),
        'image': item['image'],
        'link': item['link']
    } for item in items if item]
    return render_template('recommend.html', photo=session['photo_path'], items=recommended_items, user=session.get('user'))

@app.route('/dress', methods=['POST'])
def dress():
    clothes_img_url = request.form.get('clothes_img')
    if not clothes_img_url:
        return "옷이 선택되지 않았습니다.", 400

    user_img_path = session.get('photo_path')
    if not user_img_path:
        return redirect(url_for('upload'))

    landmarks = analyze_pose(user_img_path)
    if landmarks:
        left_shoulder = landmarks[11]
        right_shoulder = landmarks[12]
        shoulder_width = abs(right_shoulder[0] - left_shoulder[0])
        y_position = min(left_shoulder[1], right_shoulder[1])
        response = requests.get(clothes_img_url)
        clothes_img = np.array(Image.open(BytesIO(response.content)).convert('RGBA'))
        clothes_resized = cv2.resize(clothes_img, (shoulder_width, int(shoulder_width * clothes_img.shape[0] / clothes_img.shape[1])))
        user_img = cv2.imread(user_img_path)
        x1, y1 = left_shoulder[0], y_position
        y2, x2 = y1 + clothes_resized.shape[0], x1 + clothes_resized.shape[1]
        alpha_s = clothes_resized[:, :, 3] / 255.0
        for c in range(3):
            user_img[y1:y2, x1:x2, c] = (alpha_s * clothes_resized[:, :, c] +
                                         (1 - alpha_s) * user_img[y1:y2, x1:x2, c])
        result_image_path = os.path.join(app.config['UPLOAD_FOLDER'], 'result.png')
        cv2.imwrite(result_image_path, user_img)
        return render_template('result.html', result=url_for('static', filename='uploads/result.png'))
    return "체형 분석 실패", 400

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8080)
