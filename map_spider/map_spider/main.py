from scrapy import cmdline
import os

if os.path.exists('./crawl.log'):
    os.remove('./crawl.log')

if os.path.exists('./map_info.csv'):
    os.remove('./map_info.csv')

cmdline.execute('spracy crawl UNSWmap -o map_info.csv -s LOG_FILE=crawl.log'.split())
