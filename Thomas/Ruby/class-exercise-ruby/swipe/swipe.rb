# where we define our object

class Swipe

  #define properites
  attr_accessor :attractive, :humorous, :basic, :unusual

  #define initializer
  def initialize (attractive, humorous, kind, unusual)
    @attractive = attractive
    @humorous = humorous
    @kind = kind
    @unusual = unusual

  end

  #define all of the game's methods
  def looks (impression)
    if impression == 'positive'
      @attractive = true
    elsif impression == 'negative'
      @attractive = false
    end
  end

  def funny (impression)
    if impression == 'positive'
      @humorous = true
    elsif impression == 'negative'
      @humorous = false
    end
  end

  def sweet (impression)
    if impression == 'positive'
      @kind = true
    elsif impression == 'negative'
      @kind = false
    end
  end

  def extraordinary (impression)
    if impression == 'positive'
      @unusual = true
    elsif impression == 'negative'
      @unusual = false
    end
  end
  
  def match
    if  @attractive and @humorous and @kind and @unusual = true
      puts "That's a match!"
  end
end
