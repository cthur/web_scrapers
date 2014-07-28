# Author:       Corey
# Date:         7/1/2014
# Project:      Web Scraper v2
# Ruby version: 1.9.3
# Description:  A simple program meant for basic web scraping using the Nokogiri gem. This version uses an each loop to scrap the each of the specified pages.

# Nokogiri Gem installation => http://nokogiri.org/tutorials/installing_nokogiri.html

require 'nokogiri'
require 'open-uri'

url = "http://www.wikihow.com/"
pages = ["Make-a-Simple-PC-Video-Game", "Make-Video-Game-Music"]
css_selectors = "#intro p"

pages.each do |page|
  doc = Nokogiri::HTML(open(url + page)) # url + page == http://www.wikihow.com/Make-a-Simple-PC-Video-Game
  description = doc.css(css_selectors).last.children

  puts "#{page} | #{description}" # outputs the page and the target HTML

  sleep 2
end