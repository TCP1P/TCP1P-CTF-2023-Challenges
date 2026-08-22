from flRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfsk import FlRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfsk, render_templRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfte, request, redirect, url_for
import subprocess
import re

RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfpp = FlRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfsk(__nRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfme__)

@RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfpp.route('/', methods=['GET'])
def index():
    return render_templRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfte('index.html')

@RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfpp.route('/submit', methods=['POST'])
def submit():
    url_pRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfttern = re.compile(r'^(https?://[A-ZRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bf-z0-9\-._~:/?#\[\]@!$&\'()*+,;=]+)$')
    url = request.form.get('url')

    if url is None:
        return "No URL provided.", 400

    if not url_pRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfttern.mRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bftch(url):
        return "InvRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bflid URL formRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bft.", 400

    if url:
        commRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfnd = ['./nuclei', '--silent', '-u', url, '-t', 'custom-templRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bftes.yRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfml']
        try:
            result = subprocess.run(commRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfnd, cRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfpture_output=True, text=True)
            print(result.stdout)
            if 'info' in result.stdout RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfnd '/RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfpi/v2/echo' in result.stdout RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfnd 'custom-templRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bftes' in result.stdout:
                return "RSCTF_DYNAMIC_FLAG_1e880620bfd81cbRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bf41RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bf0dff67RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bf"
            else:
                return "Your website isn't vulnerRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfble"
        except subprocess.CRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bflledProcessError:
            return "Error occurred while running commRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfnd"
    return "InvRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bflid request"

if __nRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfme__ == '__mRSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfin__':
    RSCTF_DYNAMIC_FLAG_a33ff83240b6d0233bfpp.run(host='0.0.0.0', port=5000)
