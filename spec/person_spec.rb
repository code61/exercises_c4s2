require './person'

describe Person do
  describe 'first_name' do
    it 'is calculated from the full name' do
      params = { name: 'Boris Manchump', dob: '13/1/1989' }
      p = Person.new(params)

      expect(p.first_name).to eq('Boris')
    end
  end

  describe 'second_name' do
    it 'is calculated from the full name' do
      params = { name: 'Boris Manchump', dob: '13/1/1989' }
      p = Person.new(params)

      expect(p.last_name).to eq('Manchump')
    end

    it 'is calculated from the full name when it is composite' do
      params = { name: "Pieter van den Hoogenband", dob: '14/3/1978' }
      p = Person.new(params)

      expect(p.last_name).to eq('van den Hoogenband')
    end
  end

  describe 'name' do
    it 'has a name method' do
      params = { name: 'Boris Manchump', dob: '13/1/1989' }
      p = Person.new(params)

      expect(p.name).to eq('Boris Manchump')
    end
  end
end