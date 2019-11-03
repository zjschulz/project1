require './lib/project1'

class Project1::CLI 

  def call
    Project1::Horse.create_from_collection(horses = Project1::Scrape.scrape)
    puts "Welcome to the Retired Racehorse Project!"
    puts ""
    menu
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "To see all horse listings, type list."
      puts "To exit the program, type exit."
      input = gets.strip.downcase
      if input == "list"
        list
      elsif input == "exit"
        goodbye
      else
        puts "Unsure of input, type list or exit"
      end
    end
  end
    
  def list
  #list horses
    puts "Here are today's horse listings"
    @horse = Project1::Horse.all
    @horse.each.with_index(1) do |horse,i|
      puts "#{i}. #{horse.name} - #{horse.city}, #{horse.state} - #{horse.price}"
      end
    menuoption
  end
  
  def menuoption
    #diving into a horse by choice of number
    input = nil 
    while input != "exit"
      puts ""
      puts "Enter the number of a horse for more info, type list for all listings, or type exit to leave the program"
      input = gets.strip.downcase
      if input.to_i > 0 
        x = @horse[input.to_i-1]
      	puts ""
      	puts "Name: #{x.name}"
      	puts "Year of Birth: #{x.birthyear}"
      	puts "Gender: #{x.gender}"
      	puts "Height: #{x.height}"
      	puts "Price: #{x.price}"
      	puts "Location: #{x.city}, #{x.state}"
      	puts "More Info URL: #{x.url}"
      elsif input == "list"
        list
      elsif input == "exit"
        goodbye
      else
        puts "Unsure of input, type list or exit"
      end
    end
  end

  def goodbye
    puts ""
    puts "Happy Trails, Equestrians!"
    exit
  end
  
end