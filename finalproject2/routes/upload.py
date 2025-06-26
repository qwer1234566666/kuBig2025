# routes/upload.py
from flask import Blueprint, render_template, request, redirect, session, url_for, current_app
from werkzeug.utils import secure_filename
import zmq
import os

upload_bp = Blueprint('upload', __name__)

ZMQ_SERVER_ADDR = "tcp://192.168.0.97:5588"  # 예: "tcp://

@upload_bp.route('/upload', methods=['GET', 'POST'])
def upload():
    if 'user' not in session:
        return redirect(url_for('index.index'))

    if request.method == 'POST':
        if 'photo' not in request.files:
            return "No photo part in the request", 400
        file = request.files['photo']
        if file.filename == '':
            return "No selected file", 400

        # 파일 저장
        filename = secure_filename(file.filename)
        file_path = os.path.join(current_app.config['UPLOAD_FOLDER'], filename)
        file.save(file_path)
        session['photo_path'] = file_path

        # ========================= ZMQ 처리 요청 ========================= #
        context = zmq.Context()
        socket = context.socket(zmq.REQ)
        socket.connect(ZMQ_SERVER_ADDR)

        # 이미지 바이너리 전송
        with open(file_path, "rb") as f:
            socket.send(f.read())

        # 응답 수신 (수정된 이미지 or 실패 메시지)
        reply = socket.recv()

        # 실패 메시지일 경우
        if reply.startswith(b"FAIL"):
            return reply.decode(), 400

        # 성공 → 저장
        output_path = os.path.join(current_app.config['UPLOAD_FOLDER'], f"result_{filename}")
        with open(output_path, "wb") as out:
            out.write(reply)

        session['result_path'] = output_path
        return redirect(url_for('recommend.recommend'))

    return render_template('upload.html', user=session.get('user'))