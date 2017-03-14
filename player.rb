class Player
  attr_accessor :name, :lives

  def initialize(lives = 3)
    @lives = lives
    @score = 0
  end

  def decrement_life
    @lives -= 1
  end
end
