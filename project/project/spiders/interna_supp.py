# -*- coding: utf-8 -*-
import scrapy


class InternaSuppSpider(scrapy.Spider):
    name = 'interna_supp'
    allowed_domains = ['https://student.unsw.edu.au/international']
    start_urls = ['http://https://student.unsw.edu.au/international/']

    def parse(self, response):

        pass
