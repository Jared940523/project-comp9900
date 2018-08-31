import re
import pickle

zid_regex = re.compile(r'z\d{7}')

def save_obj(obj, name):
  with open('users/'+ name + '.pkl', 'wb') as f:
    pickle.dump(obj, f, pickle.HIGHEST_PROTOCOL)

def load_obj(name):
  with open('users/' + name + '.pkl', 'rb') as f:
    return pickle.load(f)

def search_zid(message):
  print('trying to find zid in {}'.format(message))
  return zid_regex.search(message)
