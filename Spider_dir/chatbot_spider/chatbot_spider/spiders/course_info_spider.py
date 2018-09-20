# -*- coding: utf-8 -*-
import scrapy
from chatbot_spider.items import *


class CourseInfoSpiderSpider(scrapy.Spider):
    name = 'course_info_spider'
    allowed_domains = ['handbook.unsw.edu.au']
    start_urls = ['http://legacy.handbook.unsw.edu.au/vbook2018/brCoursesByAtoZ.jsp?StudyLevel=Postgraduate&descr=All']

    def parse(self, response):
        course_info = response.xpath("//*[@id='contentPane']/div[2]/div/table/tr")

        for item in course_info:
            course_info_detail = ChatbotSpiderItem()
            course_info_detail['course_code'] = item.xpath("./td[1]/text()").extract_first()
            course_url_title = item.xpath("./td[2]/a[contains(@href, text)]")
            course_info_detail['course_credit'] = item.xpath("./td[3]/text()").extract_first()
            # course_url = ""
            for item_1 in course_url_title:
                course_info_detail['course_url'] = item_1.xpath("@href").extract_first()
                # course_url = item_1.xpath("@href").extract_first()
                course_info_detail['course_title'] = item_1.xpath("text()").extract_first()

            if None not in course_info_detail.values():
                yield scrapy.Request(url=course_info_detail['course_url'],
                                     callback=self.detail_parse,
                                     meta={'item': course_info_detail})
                # print(course_info_detail)
                # yield course_info_detail

    def detail_parse(self, response):
        # base_url = "http://www.handbook.unsw.edu.au"
        course_detail = response.xpath("//*[@id='contentPane']/div[2]/div/div[2]/p")
        item = response.meta['item']
        item['Prerequisite'] = 'No Enrolment Requirements'
        for index, i in enumerate(course_detail):
            name = i.xpath("./strong/text()").extract_first()
            if name == "Faculty:":
                item['course_faculty'], item['course_faculty_url'] \
                    = self.extract_info(i.xpath("./a[contains(@href, text)]"))
            elif name == "School:":
                item['course_school'], item['course_school_url'] \
                    = self.extract_info(i.xpath("./a[contains(@href, text)]"))
            elif name == "Course Outline:":
                item['course_outline'], item['course_outline_url'] \
                    = self.extract_info(i.xpath("./a[contains(@href, text)]"))
            elif name == "Campus:":
                item['course_campus'] = i.xpath("./text()").extract_first().split()[0]
            elif name == "Career:":
                item['course_career'] = i.xpath("./text()").extract_first().split()[0]
            elif name == "EFTSL:":
                item['course_EFTSL'], item['course_EFTSL_url'] \
                    = self.extract_info(i.xpath("./a[contains(@href, text)]"))
            elif name == "Indicative Contact Hours per Week:":
                item['course_hours'] = i.xpath("./text()").extract_first().split()[0]
            elif name == "Tuition Fee:":
                item['course_fee'], item['course_fee_url'] \
                    = self.extract_info(i.xpath("./a[contains(@href, text)]"))
            elif name == "Further Information:":
                item['course_further_info'], item['course_further_info_url'] \
                    = self.extract_info(i.xpath("./a[contains(@href, text)]"))
            elif name == "Enrolment Requirements:":
                item['Prerequisite'] = course_detail[index + 1].xpath("./text()").extract_first()

        item['course_description'] = response.xpath("//*[@id='contentPane']/div[2]/div/div[4]/text()").extract()
        yield item

    def extract_info(self, path):
        url = path.xpath("@href").extract_first()
        info = path.xpath("text()").extract_first()

        if url is None:
            url = "url invalid"
        if info is None:
            info = "info invalid"

        return info, url
