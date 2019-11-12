class Project1::Scrape

  def self.scrape
    site = "https://www.retiredracehorseproject.org/ottb-horses-for-sale/general-listings"
    doc = Nokogiri::HTML(open(site))
    horses = []
    hash = doc.css('tr.adsmanager_table_description.trcategory_1')
    hash.each do |listing|
      horse = {
        name: listing.css('h4').text.strip!,
        url: listing.css('a')[0].attributes['href'].value,
        birthyear: listing.css('span.fad_age').text.split(":")[1].strip!,
        height: listing.css('span.fad_heightnew').text.split(":")[1].strip!,
        price: listing.css('span.fad_price').text.split(":")[1].strip!,
        city: listing.css('span.fad_City').text.split(":")[1].strip!,
        state: listing.css('span.fad_statenew').text.split(":")[1].strip!,
        listdate: listing.css('td.tdcenter.column_date.hidden-phone').text.strip!.split[0],
        hits: listing.css('td.tdcenter.column_date.hidden-phone').text.strip!.split[1],
        gender: listing.css('span.fad_gender').text.split(":")[1].strip!
      }
      horses << horse
    end
    horses
  end

end