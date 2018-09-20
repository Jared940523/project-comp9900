# -*- coding: utf-8 -*-
import os
import pymysql
import pandas as pd

csv_file = []

for root, dirs, files in os.walk("."):
    for name in files:
        if ".csv" in name:
            csv_file.append(os.path.join(root, name))

conn = pymysql.connect(host='localhost', port=3306, user='root', passwd='351227', db='user')

cur = conn.cursor()
drop_table = '''DROP TABLE IF EXISTS pg_course_info'''
cur.execute(drop_table)

create_table = ''' 
create table pg_course_info(
prerequisite TEXT NOT NULL,
course_code VARCHAR (64) NOT NULL,
course_title VARCHAR (255) NOT NULL,
course_url TEXT NOT NULL,
credit VARCHAR (32) NOT NULL,
faculty TEXT NOT NULL,
school TEXT NOT NULL,
campus VARCHAR (64) NOT NULL,
outline VARCHAR (255) NOT NULL,
hours VARCHAR (32) NOT NULL,
fee VARCHAR (255) NOT NULL,
further_info VARCHAR (255) NOT NULL
);
'''
cur.execute(create_table)

drop_table = '''DROP TABLE IF EXISTS pg_course_desp'''
cur.execute(drop_table)
create_table = '''
create table pg_course_desp(
course_code VARCHAR (64),
description TEXT 
);
'''
cur.execute(create_table)

drop_table = '''DROP TABLE IF EXISTS pg_faculty'''
cur.execute(drop_table)
create_table = '''
create table pg_faculty(
faculty TEXT,
url TEXT
);
'''
cur.execute(create_table)

drop_table = '''DROP TABLE IF EXISTS pg_school'''
cur.execute(drop_table)
create_table = '''
create table pg_school(
school TEXT ,
url TEXT
);
'''
cur.execute(create_table)

faculty_d = {}
faculty_base_url = "http://legacy.handbook.unsw.edu.au"
school_d = {}


for file in csv_file:
    data = pd.read_csv(file)
    for item in data.values:
        faculty_d[item[8]] = faculty_base_url + item[9]
        school_d[item[17]] = item[18]
        sql = '''
        insert into pg_course_info (prerequisite, course_code, course_title, course_url, credit, faculty,
        school, campus, outline, hours, fee, further_info)
        VALUES ("%s", "%s", "%s", "%s", "%s", "%s", "%s", "%s", "%s", "%s", "%s", "%s")
        ''' % (item[0], item[5], item[19], item[20], item[6], item[8], item[17], item[3], item[16],
               item[14], item[11], item[13])
        cur.execute(sql)

        if not isinstance(item[7], str):
            item[7] = 'No Description'
        elif '"' in item[7]:
            item[7] = item[7].replace('\"', '\'')

        sql = '''insert into pg_course_desp (course_code, description)
        VALUES ("%s", "%s")''' % (item[5], item[7])
        cur.execute(sql)

for key, value in faculty_d.items():
    sql = '''insert into pg_faculty (faculty, url) VALUES ("%s", "%s")''' % (key, value)
    cur.execute(sql)

for key, value in school_d.items():
    sql = '''insert into pg_school (school, url) VALUES ("%s", "%s")''' % (key, value)
    cur.execute(sql)

conn.commit()
cur.close()


