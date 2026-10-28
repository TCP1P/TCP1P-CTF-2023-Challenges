import os
import re
import subprocess

from flask import Flask, render_template, request

app = Flask(__name__)


@app.route('/', methods=['GET'])
def index():
    return render_template('index.html')


@app.route('/submit', methods=['POST'])
def submit():
    url_pattern = re.compile(r"^(https?://[A-Za-z0-9\-._~:/?#\[\]@!$&'()*+,;=]+)$")
    url = request.form.get('url')
    if url is None:
        return 'No URL provided.', 400
    if not url_pattern.match(url):
        return 'Invalid URL format.', 400
    try:
        result = subprocess.run(
            ['./nuclei', '--silent', '-u', url, '-t', 'custom-templates.yaml'],
            capture_output=True,
            text=True,
            check=False,
        )
    except OSError:
        app.logger.exception('Could not execute Nuclei')
        return 'Error occurred while running the scanner', 500
    if result.returncode == 0 and 'info' in result.stdout and '/api/v2/echo' in result.stdout and 'custom-templates' in result.stdout:
        return os.environ['RSCTF_FLAG']
    return "Your website isn't vulnerable"


if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
