class Project1::Horse
  
  attr_accessor :name, :desc, :url
  
  def self.list
    self.scrape_horses
  end

  def self.scrape_horses
    site = "https://www.retiredracehorseproject.org/ottb-horses-for-sale/general-listings"
    doc = Nokogiri::HTML(open(site))
    binding.pry
    horses = []
    hash = doc.css('tr.adsmanager_table_description.trcategory_1')
    hash.each do |listing|
      horse = {
        name: listing.css('h4').text.strip!
        desc:
        url:
        birthyear:
        height:
        price:
        city:
        state:
        listdate:
        hits:
      }
      horses << horse
    end
  end

end