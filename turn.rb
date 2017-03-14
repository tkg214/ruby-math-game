class Turn
  attr_reader :answer

  def initialize
    @first = rand(1..20)
    @second = rand(1..20)
    @answer = @first + @second
  end

  def generate_question
    "What is #{@first} + #{@second}?"
  end

  def is_correct?(input)
    if input == @answer
      return true
    else
      return false
    end
  end
end
