# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class ChatbotSpiderItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    course_code = scrapy.Field()
    course_title = scrapy.Field()
    course_url = scrapy.Field()
    course_credit = scrapy.Field()
