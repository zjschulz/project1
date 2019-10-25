require './lib/project1'

class Project1::CLI 

  def call
    puts "Welcome to the D&D Class Spell Book!"
    #menu to pick class > pick spells > view spell info
    list_class
    menu
  end
  
  def list_class
    #method used to list classes whom use spells
    puts "List of Classes"
    puts <<-DOC.gsub /^\s*/, ''
    1. Paladin
    2. Druid
    3. Cleric
    DOC
    #bard,cleric,druid,paladin,ranger,sorcerer,warlock,wizard
  end
  
  def list_spells
    #method used to capture list of spells specific to class
  end
  
  def spell_info
    #method used to provide spell information
  end
  
  def menu
    #method used to dig into lists to obtain info
    input = nil 
    while input != "exit"
      puts "Enter the number of the class"
      input = gets.strip.downcase
      case input
      when "1"
        puts "List of Paladin Spells"
      when "2"
        puts "List of Druid Spells"
      when "3"
        puts "List of Cleric Spells"
      when "list"
        list_class
      else
        puts "Unsure of input, type list or exit"
      end
    end
  end

end