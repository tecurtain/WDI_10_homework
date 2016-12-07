require 'pry'

class NavUnit

  MAX_X = 4
  MAX_Y = 4

  attr_reader :max_x, :max_y, :compass

  def initialize (max_x = MAX_X, max_y = MAX_Y)
    @max_x = max_x
    @max_y = max_y

    @compass = {
      'north' => [0, 1],
      'east' =>  [1, 0],
      'south' => [0, -1],
      'west' =>  [-1, 0]
    }

  end

  # current position, dimensions of the board
  def is_valid_move (xpos, ypos, direction)

    if direction == 'north'

      new_y = ypos + @compass['north'][1]
      if new_y <= @max_y
        true
      else
        false
      end

    elsif direction == 'east'

      new_x = xpos + @compass['east'][0]
      if new_x <= @max_x
        true
      else
        false
      end

    elsif direction == 'south'

      new_y = ypos + @compass['south'][1]
      if new_y >= 0
        true
      else
        false
      end

    elsif direction == 'west'

      new_x = xpos + @compass['west'][0]
      if new_x >= 0
        true
      else
        false
      end

    end

  end

end
