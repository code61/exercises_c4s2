# Describes a mastermind guess
# 
# Useage:
#
#  guess = Guess.new(guess, solution)
#
# Example:
#  
#  guess = Guess.new([1,2,3,4], [1,1,1,1])
#
#  guess.score #=> [1, 0]
#  guess.to_s  #=> "[1, 2, 3, 4] #=> [1, 0]"
#
class Guess
  def initialize(guess, solution)
  end

  # Calculates the score by comparing the guess with the solution
  def score
  end

  # Converts the guess and score into string, for printing
  def to_s
  end
end