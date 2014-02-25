require './circle'

describe Circle do
  it 'has a radius method' do
    c = Circle.new(5)
    expect(c.radius).to eq(5)
  end

  it 'calculates its area' do
    c = Circle.new(10)
    expect(c.area).to eq(314.2)
  end

  it 'calculates its circumference' do
    c = Circle.new(10)
    expect(c.circumference).to be_within(0.000001).of(62.84)
  end
end