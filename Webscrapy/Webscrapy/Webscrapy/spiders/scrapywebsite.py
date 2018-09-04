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
        # course_info_head = response.xpath("//div[@class='page-content-section']/h2")
        course_info_link = response.xpath("//div[@class='page-content-section']/p/a")
        # print("head of need is %s" % course_info_head)
        # print("link of need is %s" % course_info_link)
        for item in course_info_link:
            course_info_detail = WebscrapyItem()
            part_url = item.xpath('@href').extract_first()
            init_url = start + part_url
            course_info_detail['web_url'] = init_url
            course_info_detail['web_info'] = item.xpath('text()').extract_first()
            # print(course_info_detail)

            if None not in course_info_detail.values():
                yield scrapy.Request(url=course_info_detail['web_url'],
                                     callback=self.detail_parse,
                                     meta={'item': course_info_detail})

    def detail_parse(self, response):
        print('start detail parse!!!!!!')
        item = response.meta['item']
        name = item['web_info']
        print('now we are process %s' % name)

        url_detail = response.xpath("//a")
        for i in url_detail:
            print('the param path is: ')
            print(i)
            print(i.extract())
            item['level_info'], item['level_url'] \
                = self.extract_info(i.xpath("//a[contains(@href, text)]"))
            item['title'] = response.xpath("//*[@id='main-inner']/h1/text()").extract()

            item['url_right'] = response.xpath("//div[@id='sidebar-right']//h2//text()").extract()

            left_title = response.xpath("//*[@class='content']/div/h3/text()").extract()
            for tit in left_title:
                item['url_left_title'] = tit

            content_list = response.xpath("//li//text()").extract()
            for content in content_list:
                item['url_li'] = content
            print(item)

            yield item

    def extract_info(self, path):
        print('start extract info')
        print(path)
        url = path.xpath("@href").extract()
        info = path.xpath("text()").extract()
        if url is None:
            url = "url invalid"
        if info is None:
            info = "info invalid"

        return info, url
