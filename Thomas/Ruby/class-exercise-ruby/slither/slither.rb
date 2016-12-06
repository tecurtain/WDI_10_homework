# where we define our object

class InputBox

  #define properites
  attr_accessor :final_length, :skin

  #define initializer
  def initialize (final_length, skin)
    @final_length = final_length
    @skin = skin

  end

  #define all of the game's methods
  def prompt (name)
    puts "What is your name?"
    name = gets
    puts "Hello #{name}!"
  end

  def final
    puts
    "Your final lenth was #{@final_length}."
  end
end
