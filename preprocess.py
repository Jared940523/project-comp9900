import nltk
from nltk.stem import WordNetLemmatizer 
from nltk.corpus import stopwords
from nltk.tokenize import RegexpTokenizer
##import enchant

def preprocess(input_line):
    tokenizer = RegexpTokenizer(r'\w+')
    raw_words = tokenizer.tokenize(raw_text.lower())
    wordnet_lematizer = WordNetLemmatizer()
    words = [wordnet_lematizer.lemmatize(raw_word) for raw_word in raw_words]
    filtered_words = [word for word in words if word not in stopwords.words('english')]
    return filtered_words


def getzid(l):
    for t in l:
        if len([i for i in t if i.isdigit()]) == 7:
            return t
        
def getcourse(l):
    for t in l:
        if 'comp' in t or len([i for i in t if i.isdigit()]) == 4:
            return t
        
def WordCheck(self,words):#spelling check
    d = enchant.Dict("en_US")
    checkedWords=[]
    for word in words:
        if not d.check(word):
            d.suggest(word)
            word=raw_input()
        checkedWords = (checkedWords,'05')
    return checkedWords

raw_text = input("input:")
postag = nltk.pos_tag(nltk.word_tokenize(raw_text))
filtered_words = preprocess(raw_text)
if getzid(filtered_words):
    print('zid is:',getzid(filtered_words))
else:
    print('zid:unknown')

if getcourse(filtered_words):
    print('course involved:',getcourse(filtered_words))
else:
    print('course:unknown')

print('raw:', raw_text)
print('res：', filtered_words)
print(postag)
