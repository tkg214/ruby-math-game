require 'byebug'
require_relative 'player'
require_relative 'question'

@turn = 0

puts "Welcome to TwO-O-Player Math Game!"

p1 = Player.new
p2 = Player.new

@gameplay = true

while @gameplay

  question = Question.new

  case @turn
  when 0
    print "Player 1: "
  else
    print "Player 2: "
  end

  puts question.generate_question
  @input = gets.chomp.to_i

  if (@turn == 0 && question.is_correct?(@input))
    puts "P1 Is Correct!"
    @turn += 1
  elsif (@turn == 0 && !question.is_correct?(@input))
    puts "P1 Is Incorrect!"
    p1.decrement_life
    @turn += 1
  elsif (@turn == 1 && question.is_correct?(@input))
    puts "P2 Is Correct!"
    @turn -= 1
  elsif (@turn == 1 && !question.is_correct?(@input))
    puts "P2 Is Incorrect!"
    p2.decrement_life
    @turn -= 1
  end

  puts "P1: #{p1.lives}/3 vs P2: #{p2.lives}/3"
  puts "----- NEW TURN -----"

  if p1.lives < 1 || p2.lives < 1

    if p1.lives < 1
      puts "Player 2 wins with a score of #{p2.lives}/3"
    else
      puts "Player 1 wins with a score of #{p1.lives}/3"
    end

    puts "----- GAME OVER -----"
    @gamplay = false

  end
end
