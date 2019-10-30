require './lib/project1'

class Project1::CLI 

  def call
    puts "Welcome to the Retired Racehorse Project!"
    list_horse
    menu
    goodbye
  end
  
  def list_horse
    puts "Horse Listings"
    @horses = Project1::Horse.list
  end
  
  def menu
    #method used to dig into lists to obtain info
    input = nil 
    while input != "exit"
      puts "Enter the number of the spell, type list for spell list, or type exit to leave"
      input = gets.strip.downcase
      
      if input.to_i > 0 
        thespell = @horses[input.to_i-1]
        puts "#{thespell.name} - #{thespell.desc}"
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