class Project1::Job
  
  attr_accessor :name, :stuff, :url
  
  def self.list
    #return a list of classes(jobs)
    puts <<-DOC.gsub /^\s*/, ''
      1. Paladin
      2. Druid
    DOC
    
    job_1 = self.new 
    job_1.name = "Paladin"
    job_1.stuff = "Stuff"
    job_1.url = "https://www.dndbeyond.com/classes/paladin"
    
    job_2 = self.new 
    job_2.name = "Druid"
    job_2.stuff = "Stuff"
    job_2.url = "https://www.dndbeyond.com/classes/druid"
    
    [job_1, job_2]
  end

end