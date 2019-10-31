require './lib/project1'

class Project1::CLI 

  def call
    puts "Welcome to the Retired Racehorse Project!"
    list_horse
    menu
    goodbye
  end
  
  def list_horse
    puts "Here are today's horse listings"
    Project1::Horse.all
    #returns a list of the horse listing by an index number, name, age, location, price
  end
  
  def menu
    #method used to dig into lists to obtain info
    input = nil 
    while input != "exit"
      puts "Enter the number of the hore, type list for all listings, or type exit to leave"
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