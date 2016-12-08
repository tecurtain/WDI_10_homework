# Phase 1
#
# Can create animals and clients
# Phase 2
#
# New animals and clients can be added to the shelter
# Phase 3
#
# When creating an animal or client, the user is prompted for information like names, gender etc.
# Phase 4
#
# At start, the user is prompted with a menu of options:
# display all animals
# display all clients
# create an animal
# create an client
# facilitate client adopts an animal
# facilitate client puts an animal up for adoption
# After selecting from the menu the task the user is prompted through the entire process
require "pry"
require "./happi-tails.rb"

  def animal_creation(name, age, gender, species)
    puts "Hello, welcome to Happi Tails Pet Manager"
    puts "\n" + "Please provide your Animals Name, Age, Gender and Species."
    @name = gets
    @age = gets
    @gender = gets
    @species = gets
    Animal.new
  end
# binding.pry
# def
#   sam = Client.new
#   fluffy = Animal.new
#   released_pet = sam.release_pet(fluffy)
# end




  animal_creation

# puts "Please index your Clients."
#
# client_creation
