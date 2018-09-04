# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class WebscrapyItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()

    web_url = scrapy.Field()
    web_info = scrapy.Field()
    url_li = scrapy.Field()
    url_left_title = scrapy.Field()
    url_right = scrapy.Field()
    title = scrapy.Field()

    level_info = scrapy.Field()
    level_url = scrapy.Field()
    # url_name = scrapy.Field()


    # information_for = scrapy.Field()
    # support_new = scrapy.Field()
    # all_students = scrapy.Field()
