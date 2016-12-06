# where we define our object

class User

  #define properites
  attr_accessor :name, :age

  #define initializer
  def initialize (name, age)
    @name = name
    @age = age

  end

  #define all of the game's methods
  def greeting (name)
    puts "What is your name?"
    name = gets.chomp
    puts "Hello #{@name}!"
  end

  def years_old
    puts
    "You are #{@age} years old."
  end
end
