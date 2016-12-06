# where we define our object

class Robot

  #define properites
  attr_accessor :xpos, :ypos

  #define initializer
  def initialize (xpos, ypos)
    @xpos = xpos
    @ypos = ypos
  end

  #define all of the Robot's methods
  def move (direction)
    if direction == 'north'
      @ypos += 1
    elsif direction == 'east'
      @xpos += 1
    elsif direction == 'south'
      @ypos -= 1
    elsif direction == 'west'
      @xpos -= 1
    end
  end

  def report
    "My co-ordinates are #{@xpos}, #{@ypos}"
  end
end
