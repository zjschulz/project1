require './lib/project1'

class Project1::CLI 

  def call
    puts "Welcome to the D&D Class Spell Book!"
    #menu to pick class > pick spells > view spell info
    list_job
    menu
    goodbye
  end
  
  def list_job
    #method used to list classes whom use spells
    puts "List of Classes"
    puts <<-DOC.gsub /^\s*/, ''
    1. Paladin
    2. Druid
    3. Cleric
    DOC
    #bard,cleric,druid,paladin,ranger,sorcerer,warlock,wizard
    @jobs = Project1::Job.info
  end
  
  def list_spells(job)
    #method used to capture list of spells specific to class
    puts "#{job}'s Spells"
    menu
  end
  
  def spell_info
    #method used to provide spell information
  end
  
  def menu
    #method used to dig into lists to obtain info
    input = nil 
    while input != "exit"
      puts "Enter the number of the class, type list for class list, or type exit to leave"
      input = gets.strip.downcase
      case input
      when "1"
        job = "Paladin"
        list_spells(job)
      when "2"
        job = "Druid"
        list_spells(job)
      when "3"
        job = "Cleric"
        list_spells(job)
      when "list"
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