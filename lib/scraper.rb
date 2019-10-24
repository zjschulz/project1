require 'nokogiri'
require 'open-uri'

require_relative './project1.rb'

class Scraper
  
  
  def scrape
    html = open("insert_url_here")
    doc = Nokogiri::HTML(html)
  end
  
end

Scraper.new