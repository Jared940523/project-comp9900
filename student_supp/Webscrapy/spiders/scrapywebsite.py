# -*- coding: utf-8 -*-

import scrapy
from Webscrapy.items import WebscrapyItem


class CourseInfoSpiderSpider(scrapy.Spider):
    name = 'scrapywebsite'
    allowed_domains = ['student.unsw.edu.au']
    start_urls = ['https://student.unsw.edu.au/international']

    def parse(self, response, start="https://student.unsw.edu.au"):
        length = len(response.xpath("//div[@class='page-content-section']/h2").extract())
        print('length of title is %d' % length)
        course_info_head = response.xpath("//div[@class='page-content-section']/h2")
        course_info_link = response.xpath("//div[@class='page-content-section']/p/a")
        print("head of need is %s" % course_info_head)
        print("link of need is %s" % course_info_link)
        for item in course_info_link:
            course_info_detail = WebscrapyItem()
            part_url = item.xpath('@href').extract_first()
            init_url = start + part_url
            course_info_detail['web_url'] = init_url
            course_info_detail['web_info'] = item.xpath('text()').extract_first()
            print(course_info_detail)

            if None not in course_info_detail.values():
                yield scrapy.Request(url=course_info_detail['web_url'],
                                     callback=self.detail_parse,
                                     meta={'item': course_info_detail})

    def detail_parse(self, response):
        item = response.meta['item']
        name = item['web_info']
        # if name == ''
        item['title'] = response.xpath("//*[@id='main-inner']/h1/text()").extract()
        item['url_img'] = response.xpath("//*[@id='main-inner']/div[4]/img/@src").extract()
        item['url_info'] = response.xpath("//*[@class='content']/div/h3/text()").extract()
        item['url_li'] = response.xpath("//*[@class='content']/div/ul/li/text()").extract()
        item['url_content'] = response.xpath("//*[@class='content']/div/p").xpath('string(.)').extract()
        item['url_right'] = response.xpath("//*[@class='content']/div/h2/a/@href").extract()
        yield item