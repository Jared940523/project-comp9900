# -*- coding: utf-8 -*-
import os
import pymysql
import pandas as pd

csv_file = []

for root, dirs, files in os.walk("."):
    for name in files:
        if ".csv" in name:
            csv_file.append(os.path.join(root, name))

conn = pymysql.connect(host='localhost', port=3306, user='root', passwd='351227', db='chatbot')

cur = conn.cursor()
drop_table = '''DROP TABLE IF EXISTS map_info'''
cur.execute(drop_table)

create_table = ''' 
create table map_info(
campus VARCHAR (255) NOT NULL ,
location TEXT NOT NULL ,
map_name VARCHAR (255) NOT NULL ,
map_url TEXT NOT NULL
);
'''

cur.execute(create_table)

for file in csv_file:
    data = pd.read_csv(file)
    for item in data.values:
        if len(item[3].split(',')) > 1:
            name = item[2].split(',')
            for index, url in enumerate(item[3].split(',')):
                sql = '''
                insert into map_info (campus, location, map_name, map_url) VALUES
                ("%s", "%s", "%s", "%s")
                ''' % (item[0], item[1], name[index], url)
                cur.execute(sql)
        else:
            sql = '''
            insert into map_info (campus, location, map_name, map_url) VALUES
                ("%s", "%s", "%s", "%s")
                ''' % (item[0], item[1], item[2], item[3])
            cur.execute(sql)

conn.commit()
cur.close()
