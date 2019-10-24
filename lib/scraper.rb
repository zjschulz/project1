require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './project1.rb'

class Scraper
  
  def scrape_class_card
    html = open("https://www.dndbeyond.com/classes")
    doc = Nokogiri::HTML(html)
    binding.pry
  end
  
end

Scraper.new.scrape_class_card