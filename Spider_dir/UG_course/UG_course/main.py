from scrapy import cmdline
import os

if os.path.exists('crawl.log'):
    os.remove('crawl.log')

if os.path.exists('ug_course_info.csv'):
    os.remove('ug_course_info.csv')

cmdline.execute('spracy crawl ug_course_info -o ug_course_info.csv -s LOG_FILE=crawl.log'.split())
