# Allows you to play http://en.wikipedia.org/wiki/Mastermind_(board_game)
#
# Example:
#
#  game = Mastermind.new(1, 2, 3, 4)
#  
#  # You make a guess. The game tells you how
#  # many are the right number in the right position
#  # and how many are the right number but the wrong
#  # position
#  
#  game.guess(1, 1, 2, 2) #=> [1, 1]
#  game.number_of_guesses #=> 1
#  game.guesses_so_far    
#  1. [1, 1, 2, 2] #=> [1, 1]
#  
#  game.guess(1, 1, 1, 1) #=> [1, 0]
#  game.number_of_guesses #=> 2
#  game.guesses_so_far
#  1. [1, 1, 2, 2] #=> [1, 1]
#  2. [1, 1, 1, 1] #=> [1, 0]
#
class Mastermind
  def initialize(a, b, c, d)
  end

  def solution
  end

  def guess(a, b, c, d)
  end

  def number_of_guesses

  end

  # Prints out the guesses so far
  def guesses_so_far
  end
end