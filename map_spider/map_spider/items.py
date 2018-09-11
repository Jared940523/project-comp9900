# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class MapSpiderItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    campus_name = scrapy.Field()
    location = scrapy.Field()
    pdf_name = scrapy.Field()
    pdf_url = scrapy.Field()
