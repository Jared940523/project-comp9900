# -*- coding: utf-8 -*-

# Define here the models for your scraped items
#
# See documentation in:
# https://doc.scrapy.org/en/latest/topics/items.html

import scrapy


class UgCourseItem(scrapy.Item):
    # define the fields for your item here like:
    # name = scrapy.Field()
    course_code = scrapy.Field()
    course_title = scrapy.Field()
    course_url = scrapy.Field()
    course_credit = scrapy.Field()

    course_faculty = scrapy.Field()
    course_faculty_url = scrapy.Field()

    course_school = scrapy.Field()
    course_school_url = scrapy.Field()

    course_outline = scrapy.Field()
    course_outline_url = scrapy.Field()

    course_campus = scrapy.Field()
    course_career = scrapy.Field()

    course_EFTSL = scrapy.Field()
    course_EFTSL_url = scrapy.Field()

    course_hours = scrapy.Field()
    Prerequisite = scrapy.Field()

    course_fee = scrapy.Field()
    course_fee_url = scrapy.Field()

    course_further_info = scrapy.Field()
    course_further_info_url = scrapy.Field()

    course_description = scrapy.Field()
