from scrapy import cmdline
import os

if os.path.exists('crawl.log'):
    os.remove('crawl.log')

if os.path.exists('course_info.csv'):
    os.remove('course_info.csv')

cmdline.execute('spracy crawl course_info_spider -o course_info.csv -s LOG_FILE=crawl.log'.split())
