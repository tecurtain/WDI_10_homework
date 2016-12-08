
#
# Phase 1
#
# Can create animals and clients
#
# Phase 2
#
# New animals and clients can be added to the shelter
#
# Phase 3
#
# When creating an animal or client, the user is prompted for information like names, gender etc.
#
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

# Animal:
# An animal should have a name.
# An animal should have an age.
# An animal should have a gender.
# An animal should have a species.
# An animal can have multiple toys.

class Animal

  #define properites
  attr_accessor :name, :age, :gender, :species, :toys

  #define initializer
  def initialize (name, age, gender, species)
    @name = name
    @age = age
    @gender = gender
    @species = species
    @toys = []
  end

  def add_toy(toy)
    @toys.push(toy)
  end

end
# Client:
# A client should have a name.
# A client should have a number of children.
# A client should have an age.
# A client should have a list of pets.

class Client
    #define properites
  attr_accessor :name, :age, :num_children, :pet_list

    #define initializer
  def initialize (name, age, num_children)
    @name = name
    @age = age
    @num_children = num_children
    @pet_list = []
  end

  def adopt_pet(animal)
    @pet_list.push(animal)
  end

  def release_pet(animal)
    @pet_list.pop(animal)
  end

end

# Shelter:
# The shelter should display all the clients.
# The shelter should display all the animals.

  class Shelter
  attr_reader :client_list, :animal_list

    #define initializer
  def initialize
    @client_list = []
    @animal_list = []
  end

  def add_client(client)
    @client_list.push(client)
  end

  def add_animal(animal)
    @animal_list.push(animal)
  end
end
# binding.pry
# Relationships:
#
# A client should be able to adopt an animal.
# A client should be able to put an animal up for adoption
