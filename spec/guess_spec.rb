require './guess'

describe Guess do

  it "calculates the score" do
    examples = [
      [ [1, 1, 1, 1], [1, 1, 1, 1], [4, 0] ],
      [ [1, 1, 1, 1], [1, 2, 3, 4], [1, 0] ],
      [ [1, 1, 2, 2], [1, 2, 3, 4], [1, 1] ],
      [ [1, 2, 3, 4], [2, 3, 4, 1], [0, 4] ],
      [ [1, 3, 2, 1], [1, 1, 5, 5], [1, 1] ],
      [ [1, 3, 2, 1], [5, 5, 5, 5], [0, 0] ],
      [ [1, 1, 1, 1], [2, 2, 2, 1], [1, 0] ]
    ]

    examples.each do |guess, actual, score|
      g = Guess.new(guess, actual)
      expect(g.score).to eq(score)
    end
  end
end