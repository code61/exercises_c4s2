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
    @guess = guess
    @solution = solution
  end

  # Calculates the score by comparing the guess with the solution
  def score
    n_absolute_matches = 0
    guess_unmatched    = []
    solution_unmatched = []

    (0..3).each do |i|
      if @guess[i] == @solution[i]
        n_absolute_matches += 1
      else
        guess_unmatched    << @guess[i]
        solution_unmatched << @solution[i]
      end
    end

    n_other_matches = 0
    (1..6).each do |n|
      n_other_matches += [guess_unmatched.count(n), solution_unmatched.count(n)].min
    end

    [n_absolute_matches, n_other_matches]
  end

  # Converts the guess and score into string, for printing
  def to_s
    @guess.to_s + " #=> " + score.to_s
  end
end