require './lib/project1'

class Project1::CLI 

  def call
    Project1::Horse.create_from_collection(horses = Project1::Scrape.scrape)
    puts "Welcome to the Retired Racehorse Project!"
    list_horse
    menu
  end
  
  def list_horse
    puts "Here are today's horse listings"
    @horse = Project1::Horse.all
    @horse.each.with_index(1) do |horse,i|
      puts "#{i}. #{horse.name} - #{horse.city}, #{horse.state} - #{horse.price}"
    end
  end
  
  def menu
    #method used to dig into lists to obtain info
    #Number off categories for menu. 1 for complete list of horses. 2 for search
    input = nil 
    while input != "exit"
      puts "Enter the number of the horse, type list for all listings, or type exit to leave"
      input = gets.strip.downcase
      
      if input.to_i > 0 
        x = @horse[input.to_i-1]
        puts "#{x.name}"
        puts "#{x.desc}"
      elsif input == "list"
        list_horse
      elsif input == "exit"
        goodbye
      else
        puts "Unsure of input, type list or exit"
      end
    end
  end

  def goodbye
    puts "Happy Trails, Equestrians!"
  end
  
end