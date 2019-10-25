class Project1::Job

  def self.list
    #return a list of classes(jobs)
    puts <<-DOC.gsub /^\s*/, ''
      1. Paladin
      2. Druid
      3. Cleric
    DOC
  end

end