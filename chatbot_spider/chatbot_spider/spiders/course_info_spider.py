# -*- coding: utf-8 -*-
import scrapy
from chatbot_spider.items import *


class CourseInfoSpiderSpider(scrapy.Spider):
    name = 'course_info_spider'
    allowed_domains = ['handbook.unsw.edu.au']
    start_urls = ['http://www.handbook.unsw.edu.au/vbook2018/brCoursesByAtoZ.jsp?StudyLevel=Postgraduate&descr=All']

    def parse(self, response):
        course_info = response.xpath("//*[@id='contentPane']/div[2]/div/table/tr")
        for item in course_info:
            course_info_detail = ChatbotSpiderItem()
            course_info_detail['course_code'] = item.xpath("./td[1]/text()").extract_first()
            course_url_title = item.xpath("./td[2]/a[contains(@href, text)]")

            for item_1 in course_url_title:
                course_info_detail['course_url'] = item_1.xpath("@href").extract_first()
                course_info_detail['course_title'] = item_1.xpath("text()").extract_first()

            course_info_detail['course_credit'] = item.xpath("./td[3]/text()").extract_first()

            if None not in course_info_detail.values():
                yield course_info_detail
