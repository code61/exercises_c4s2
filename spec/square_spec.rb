require './square'

describe Square do
  it 'has a side method' do
    s = Square.new(3)
    expect(s.side).to eq(3)
  end

  it 'calculates its area' do
    s = Square.new(5)
    expect(s.area).to eq(25)
  end

  it 'calculates its perimeter' do
    s = Square.new(1)
    expect(s.perimeter).to eq(4)
  end
end