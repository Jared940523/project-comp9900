from scrapy import cmdline

cmdline.execute('spracy crawl course_info_spider -o course_info.csv -s LOG_FILE=crawl.log'.split())
