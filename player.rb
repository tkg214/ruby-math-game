class Player
  attr_accessor :name, :lives, :points

  def initialize(lives = 3)
    @lives = lives
    @score = 0
  end

  def increment_points
    @points += 1
  end

  def decrement_points
    @points -= 1
  end
end
