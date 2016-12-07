require './nav-unit.rb'

# where we define our object

class Robot

  #define properites
  attr_reader :xpos, :ypos, :navunit

  #define initializer
  def initialize (xpos, ypos)
    @xpos = xpos
    @ypos = ypos
    @navunit = NavUnit.new
  end

  #define all of the Robot's methods
  def move (direction)

    if@navunit.is_valid_move @xpos, @ypos

      if direction == 'north'
        @ypos += 1
      elsif direction == 'east'
        @xpos += 1
      elsif direction == 'south'
        @ypos -= 1
      elsif direction == 'west'
        @xpos -= 1
      end

    else
      puts "that's not a valid move"
    end

  def report
    "My co-ordinates are #{@xpos}, #{@ypos}"
  end
end
