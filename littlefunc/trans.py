import re
import urllib.parse, urllib.request
import hashlib
import urllib
import random
import json
import time
from translate import Translator

url_google = 'http://translate.google.cn'
reg_text = re.compile(r'(?<=TRANSLATED_TEXT=).*?;')
user_agent = r'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) ' \
                  r'Chrome/44.0.2403.157 Safari/537.36'
 
def translateGoogle(text, f='zh-cn', t='en'):
    values = {'hl': 'en', 'ie': 'utf-8', 'text': text, 'langpair': '%s|%s' % (f, t)}
    value = urllib.parse.urlencode(values)
    req = urllib.request.Request(url_google + '?' + value)
    req.add_header('User-Agent', user_agent)
    response = urllib.request.urlopen(req)
    content = response.read().decode('utf-8')
    data = reg_text.search(content)
    result = data.group(0).strip(';').strip('\'')
    print(result)
text = "我想了解comp9900"
translateGoogle(text, f='zh-cn', t='en')
