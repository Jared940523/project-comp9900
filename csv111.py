import csv
import numpy as np
with open('course_info.csv','r',encoding="utf8") as csvfile:
    reader = csv.reader(csvfile)
    rows= [row for row in reader]
data=np.array(rows)
dict_info = {}
for i in data:
    info = ''
    for a in range(4,len(i)):
        info += i[a]
    if len(i)>=5:       
        dict_info[i[4]] =  info

def findinfo(course_id):
    if dict_info[course_id]:
        return dict_info[course_id]
    else:
        return False
    
