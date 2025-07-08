# 12345
# Web.py
from flask import Flask, render_template, request, redirect, session, url_for, make_response
from werkzeug.utils import secure_filename
from flask_sqlalchemy import SQLAlchemy
import os
import requests
from datetime import timedelta

app = Flask(__name__)
app.secret_key = os.environ.get('SECRET_KEY', 'your_secret_key')

# 절대 경로를 사용한 DB 경로 지정
BASE_DIR = os.path.dirname(os.path.abspath(__file__))
db_path = os.path.join(BASE_DIR, 'mmm.db')
app.config['UPLOAD_FOLDER'] = os.path.join(BASE_DIR, 'static/uploads/')
app.config['SQLALCHEMY_DATABASE_URI'] = f'sqlite:///{db_path}'
app.config['SQLALCHEMY_TRACK_MODIFICATIONS'] = False
app.permanent_session_lifetime = timedelta(minutes=5)

db = SQLAlchemy(app)
os.makedirs(app.config['UPLOAD_FOLDER'], exist_ok=True)

class User(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    kakao_id = db.Column(db.String(128), unique=True, nullable=False)
    nickname = db.Column(db.String(128), nullable=False)

class Clothes(db.Model):
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(128), nullable=False)
    image_path = db.Column(db.String(256), nullable=False)

with app.app_context():
    db.create_all()
    from sqlalchemy import inspect
    inspector = inspect(db.engine)
    print("✅ DB 테이블 생성/확인 완료:", inspector.get_table_names())
    if Clothes.query.count() == 0:
        default_items = [
            Clothes(name='블레이저', image_path='static/clothes/blazer.png'),
            Clothes(name='셔츠', image_path='static/clothes/shirt.png'),
            Clothes(name='가디건', image_path='static/clothes/cardigan.png')
        ]
        db.session.bulk_save_objects(default_items)
        db.session.commit()
        print("✅ 기본 의상 아이템 시딩 완료")

@app.route('/')
def home():
    user = session.get('user')
    return render_template('login.html', user=user)

@app.route('/login')
def login():
    session['auth_type'] = 'login'
    kakao_rest_api_key = os.environ.get('KAKAO_REST_KEY', '372b9ff0b3185bf66106edc076409718')
    redirect_uri = url_for('oauth', _external=True)
    kakao_auth_url = (
        f"https://kauth.kakao.com/oauth/authorize?"
        f"client_id={kakao_rest_api_key}&redirect_uri={redirect_uri}&response_type=code&prompt=login"
    )
    return redirect(kakao_auth_url)

@app.route('/signup')
def signup():
    session['auth_type'] = 'signup'
    return redirect(url_for('login'))

@app.route('/oauth')
def oauth():
    code = request.args.get('code')
    if not code:
        return "인증 코드가 없습니다", 400

    kakao_rest_api_key = os.environ.get('KAKAO_REST_KEY', '372b9ff0b3185bf66106edc076409718')
    token_url = 'https://kauth.kakao.com/oauth/token'
    redirect_uri = url_for('oauth', _external=True)
    payload = {
        'grant_type': 'authorization_code',
        'client_id': kakao_rest_api_key,
        'redirect_uri': redirect_uri,
        'code': code
    }
    headers = {'Content-type': 'application/x-www-form-urlencoded;charset=utf-8'}
    token_response = requests.post(token_url, data=payload, headers=headers)
    token_json = token_response.json()
    if 'access_token' not in token_json:
        print('🔴 카카오 토큰 에러 응답:', token_json)
        error_desc = token_json.get('error_description', str(token_json))
        return f"토큰 요청 실패: {error_desc}", 400

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
        print(f"✅ 신규 사용자 저장: {kakao_id}, {nickname}")

    session.permanent = True
    session['user'] = {'id': kakao_id, 'nickname': nickname}

    response = make_response(redirect(url_for('upload')))
    response.headers['Cache-Control'] = 'no-store, no-cache, must-revalidate, max-age=0'
    return response

@app.route('/logout')
def logout():
    session.clear()
    return redirect(url_for('home'))

@app.route('/upload', methods=['GET', 'POST'])
def upload():
    if 'user' not in session:
        return redirect(url_for('home'))
    if request.method == 'POST':
        if 'photo' not in request.files:
            return "No photo part in the request", 400
        file = request.files['photo']
        if file.filename == '':
            return "No selected file", 400
        filename = secure_filename(file.filename)
        file_path = os.path.join(app.config['UPLOAD_FOLDER'], filename)
        file.save(file_path)
        session['photo_path'] = file_path
        return redirect(url_for('recommend'))
    return render_template('upload.html', user=session.get('user'))

@app.route('/recommend')
def recommend():
    if 'user' not in session:
        return redirect(url_for('home'))
    photo_path = session.get('photo_path')
    if not photo_path:
        return redirect(url_for('upload'))
    items = Clothes.query.all()
    return render_template('recommend.html', photo=photo_path, items=[{'name': i.name, 'image': i.image_path} for i in items], user=session.get('user'))

@app.route('/dress/<item>')
def dress(item):
    if 'user' not in session:
        return redirect(url_for('home'))
    photo_path = session.get('photo_path')
    if not photo_path:
        return redirect(url_for('upload'))
    result_image = photo_path
    return render_template('result.html', result=result_image, item=item, user=session.get('user'))

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=int(os.environ.get('PORT', 8080)))
