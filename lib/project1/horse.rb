class Project1::Horse

  attr_accessor :name, :desc, :url, :birthyear, :height, :price, :city, :state, :listdate, :hits

  @@all = []

  def initialize(hash_of_horses)
    #should take in an argument of a hash and use meta-programming to assign the newly created listing attributes and values per the key/value pairs of the hash.
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def self.create_from_collection(Project1::Scrape.scrape)
    #should take in an array of hashes. In fact, we will call Horse.create_from_collection with the return value of the Scraper.scrape method as the argument
    #should iterate over the array of hashes and create a new individual horse using each hash
  end

  #Do I really need this one?
  def add_horse_attributes(attributes_hash)
    #should iterate over the given hash and use meta-programming to dynamically assign the student attributes and values per the key/value pairs of the hash.
  end

end