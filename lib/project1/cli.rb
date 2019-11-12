require './lib/project1'
require 'colorize'

class Project1::CLI 

  def call
    Project1::Horse.create_from_collection(horses = Project1::Scrape.scrape)
    puts "Welcome to the Retired Racehorse Project!".colorize(:blue)
    puts ""
    menu
  end
  
  def menu
    input = nil
    while input != "exit"
      puts "To see all horse listings, type 'list'"
      puts "To exit the program, type 'exit'"
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
    puts ""
    @horse = Project1::Horse.all
    @horse.each.with_index(1) do |horse,i|
      puts "#{i} ".colorize(:green) + "#{horse.name} - #{horse.city}, #{horse.state} - #{horse.price}"
      end
    searchbynumber
  end
  
  def searchbynumber
    input = nil 
    while input != "exit"
      puts ""
      puts "To view more information on a horse, type its '#'"
      puts "To see all horse listings, type 'list'"
      puts "To exit the program, type 'exit'"
      puts ""
      input = gets.strip.downcase
      if input.to_i > 0 and input.to_i < @horse.length+1
        x = @horse[input.to_i-1]
      	puts ""
      	puts "Name:".colorize(:green) + " #{x.name}"
      	puts "Year of Birth:".colorize(:green) + " #{x.birthyear}"
      	puts "Gender:".colorize(:green) + " #{x.gender}"
      	puts "Height:".colorize(:green) + " #{x.height}"
      	puts "Price: $".colorize(:green) + " #{x.price}"
      	puts "Location:".colorize(:green) + " #{x.city}, #{x.state}"
      	puts "More Info URL:".colorize(:green) + " https://www.retiredracehorseproject.org#{x.url}"
      elsif input == "list"
        list
      elsif input == "exit"
        goodbye
      else
        puts "Unsure of input!".colorize(:red)
      end
    end
  end

  def goodbye
    puts ""
    puts "Happy Trails, Equestrians!".colorize(:blue)
    exit
  end
  
end