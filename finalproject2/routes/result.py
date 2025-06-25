# routes/result.py
from flask import Blueprint, render_template, redirect, session, url_for, request

result_bp = Blueprint('result', __name__)

# POST 방식 → GET 방식으로 리디렉션
@result_bp.route('/dress', methods=['POST'])
def dress_post():
    if 'user' not in session:
        return redirect(url_for('index.index'))

    selected_item = request.form.get('clothes_img')
    if not selected_item:
        return "옷이 선택되지 않았습니다", 400

    return redirect(url_for('result.result', item=selected_item))

# GET 방식으로 옷 선택 결과 처리
@result_bp.route('/dress/<path:item>')
def result(item):
    if 'user' not in session:
        return redirect(url_for('index.index'))

    photo_path = session.get('photo_path')
    if not photo_path:
        return redirect(url_for('upload.upload'))

    return render_template(
        'result.html',
        result=photo_path,
        item=item,
        user=session.get('user'),
        previous=url_for('recommend.recommend')
    )