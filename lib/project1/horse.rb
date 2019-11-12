class Project1::Horse

  attr_accessor :name, :url, :birthyear, :height, :price, :city, :state, :listdate, :hits, :gender

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
  
  #in cli.rb @horse = Project1::Horse.all
  def self.find_by_gender(gender)
    self.all.find_all {|x| x.gender == gender}
  end

  def self.find_by_birthyear(year)
    self.all.find_all {|x| x.birthyear == year}
  end
  
  def self.find_by_state(state)
    self.all.find_all {|x| x.state == state}
  end

end