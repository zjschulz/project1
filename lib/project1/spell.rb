class Project1::Spell
  
  attr_accessor :name, :desc, :url
  
  def self.list
    self.scrape_spells
  end

  def self.scrape_spells
    spellurl = "https://roll20.net/compendium/dnd5e/Spells%20List#content"
    doc = Nokogiri::HTML(open(spellurl))
    binding.pry
  end

end