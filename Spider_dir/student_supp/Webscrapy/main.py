from scrapy import cmdline

cmdline.execute('spracy crawl scrapywebsite -o websiteinfo.csv -s LOG_FILE=crawl.log'.split())
# cmdline.execute('spracy crawl scrapywebsite'.split())