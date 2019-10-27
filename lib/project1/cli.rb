require './lib/project1'

class Project1::CLI 

  def call
    puts "Welcome to the D&D Class Book!"
    #menu to pick class > pick spells > view spell info
    list_job
    menu
    goodbye
  end
  
  def list_job
    #method used to list classes whom use spells
    puts "List of Classes"
    @jobs = Project1::Job.list
    @jobs.each.each.with_index(1) do |job,i|
      puts "#{i} #{job.name} - #{job.desc}"
    end
  end
  
  def menu
    #method used to dig into lists to obtain info
    input = nil 
    while input != "exit"
      puts "Enter the number of the class, type list for class list, or type exit to leave"
      input = gets.strip.downcase
      
      if input.to_i > 0 
        thejob = @jobs[input.to_i-1]
        puts "#{thejob.name} - #{thejob.desc}"
      elsif input == "list"
        list_job
      else
        puts "Unsure of input, type list or exit"
      end
    end
  end

  def goodbye
    puts "Happy Hunting, Adventurers!"
  end
  
end