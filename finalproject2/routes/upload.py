# routes/upload.py
from flask import Blueprint, render_template, request, redirect, session, url_for, current_app
from werkzeug.utils import secure_filename
import os
from models import db

upload_bp = Blueprint('upload', __name__)

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

        filename = secure_filename(file.filename)
        file_path = os.path.join(current_app.config['UPLOAD_FOLDER'], filename)
        file.save(file_path)
        session['photo_path'] = file_path
        return redirect(url_for('recommend.recommend'))

    return render_template('upload.html', user=session.get('user'))
