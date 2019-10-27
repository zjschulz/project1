class Project1::Job
  
  attr_accessor :name, :desc, :url, :info
  
  def self.list
    #Scrape data to create objects
    Project1::Scraper.new("https://www.dndbeyond.com/classes")
    
    job_1 = self.new 
    job_1.name = "Paladin"
    job_1.desc = "Holy Knight"
    job_1.url = "https://www.dndbeyond.com/classes/paladin"
    job_1.info = "Uses smites to cast out evil."
    
    job_2 = self.new 
    job_2.name = "Druid"
    job_2.desc = "Nature Priest"
    job_2.url = "https://www.dndbeyond.com/classes/druid"
    job_2.info = "Shapeshifts and uses nature magic."
    
    [job_1, job_2]
  end

end