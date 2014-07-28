# Author:       Corey
# Date:         7/1/2014
# Project:      Simple Web Scraper
# Ruby version: 1.9.3
# Description:  A simple program meant for very basic web scraping using the Nokogiri gem.


# Nokogiri Gem installation => http://nokogiri.org/tutorials/installing_nokogiri.html

require 'nokogiri'
require 'open-uri'

url = "http://www.wikihow.com/Make-a-Simple-PC-Video-Game"
doc = Nokogiri::HTML(open(url))

css_selectors = "#originators span"
title = doc.css(css_selectors).children

print title