class Project1::Horse

  attr_accessor :name, :desc, :url, :birthyear, :height, :price, :city, :state, :listdate, :hits, :gender

  @@all = []

  def initialize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.create_from_collection(horses = Project1::Scrape.scrape)
    horses.each do |x|
      self.new(x)
    end
  end

end