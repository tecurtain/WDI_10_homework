# where we define our object

class CanCode

  #define properites
  attr_accessor :rested, :frustration, :willpower

  # how many hours of sleep did you get?
  # rate on a scale of 1-10 how frustrated you are
  # rate on a scale of 1-10 how much willpower you have
  #define initializer
  def initialize (sleep, frustration, willpower)
    @rested = rested
    @frustration = frustration
    @willpower = willpower

  end

  #define all of the game's methods
  def tiredness (hours)
    if hours == 'ok'
      @rested += 1
    elsif hours == 'bad'
      @rested -= 1
    elsif hours == 'shit'
      @rested -= 5
    elsif hours == 'amazing'
      @rested += 5
    end
  end

  def anger_level (emotion)
    if emotion == 'ok'
      @frustration += 1
    elsif emotion == 'bad'
      @frustration -= 1
    elsif emotion == 'shit'
      @frustration -= 5
    elsif emotion == 'amazing'
      @frustration += 5
    end
  end

  def will_to_code (desire)
    if desire == 'ok'
      @willpower += 1
    elsif desire == 'bad'
      @willpower -= 1
    elsif desire == 'shit'
      @willpower -= 5
    elsif desire == 'amazing'
      @willpower += 5
    end
  end

  #Create functions that compare willpower, frustration and rested.  If willpower is greater than
  #frustration but less than rested you can code
  def rested_level
    puts
    "You probs got around #{@rested} hours of sleep."
  end

  def anger_management
    puts
    "On a scale of 1-10, your frustration level is at a #{@frustration}."
  end

  def you_can_do_it
    puts
    "In terms of willpower however, you're at a #{@willpower}."
  end
end
