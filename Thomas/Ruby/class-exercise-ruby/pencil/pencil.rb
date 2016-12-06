# where we define our object

class Pencil

  #define properites
  attr_accessor :material, :eraser, :length

  #define initializer
  def initialize (material, eraser, length)
    @material = material
    @eraser = eraser
    @length = length

  end

  #define all of the Robot's methods
  def erase (mistake)
    if mistake == true
      ""
    elsif mistake == false
      "I can write freely"
    end
  end

  def examine
    "This pencil is made out of #{@material}, and is #{@length} long."
  end
end
