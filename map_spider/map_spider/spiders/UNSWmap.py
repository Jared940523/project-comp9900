# -*- coding: utf-8 -*-
import scrapy
from map_spider.items import *


class UnswmapSpider(scrapy.Spider):
    name = 'UNSWmap'
    allowed_domains = ['estate.unsw.edu.au']
    start_urls = ['https://www.estate.unsw.edu.au/maps/maps.html']

    def parse(self, response):
        # print(response.text)
        map_info = MapSpiderItem()
        map_table = response.xpath('//*[@id="node-50"]/table/tbody/tr')
        for item in map_table:
            map_info['campus_name'] = item.xpath('./td[1]/text()').extract_first()

            if not map_info['campus_name']:
                map_info['campus_name'] = item.xpath('./td[1]/p[1]/text()').extract_first().replace(u'\xa0', u'').strip(
                    ':')
            else:
                map_info['campus_name'] = map_info['campus_name'].replace(u'\xa0', u'').strip(':')

            map_info['location'] = ""
            if not item.xpath('./td[2]/p'):
                map_info['location'] = item.xpath('./td[2]/text()').extract_first()
            else:
                for p in item.xpath('./td[2]/p'):
                    map_info['location'] += p.xpath('./text()').extract_first() + ' '

            if not item.xpath('./td[3]/p'):
                map_pdf = item.xpath('./td[3]/a[contains(@href, text)]')
                map_info['pdf_name'] = map_pdf.xpath("text()").extract_first()
                map_info['pdf_url'] = map_pdf.xpath("@href").extract_first()
            else:
                pdf_name_l = []
                pdf_url_l = []
                for p in item.xpath('./td[3]/p'):
                    map_pdf = p.xpath('./a[contains(@href, text)]')
                    pdf_url_l.append(map_pdf.xpath("@href").extract_first())
                    if not p.xpath('./a/strong'):
                        pdf_name_l.append(map_pdf.xpath("text()").extract_first())
                    else:
                        pdf_name_l.append(map_pdf.xpath("./strong/text()").extract_first())

                map_info['pdf_name'] = pdf_name_l
                map_info['pdf_url'] = pdf_url_l

            yield map_info
