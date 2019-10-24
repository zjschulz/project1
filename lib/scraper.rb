require 'nokogiri'
require 'open-uri'

require_relative './project1.rb'

class Scraper
  
  def scrape_class
    html = open("https://dnd-wiki.org/wiki/SRD5:Classes")
    doc = Nokogiri::HTML(html)
  end
  
end

Scraper.new