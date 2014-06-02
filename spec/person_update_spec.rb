require './person'

describe Person do
  before do
    params = { name: 'Boris Manchump', dob: '13/1/1989' }
    @person = Person.new(params)
  end

  describe 'first_name' do
    it 'is initially calculated from the full name' do
      expect(@person.first_name).to eq('Boris')
    end

    it 'can be changed' do
      @person.first_name = "Henry"
      expect(@person.first_name).to eq('Henry')
    end
  end

  describe 'last_name' do
    it 'is initially calculated from the full name' do
      expect(@person.last_name).to eq('Manchump')
    end

    it 'is initially calculated from the full name when it is composite' do
      params = { name: "Pieter van den Hoogenband", dob: '14/3/1978' }
      p = Person.new(params)

      expect(p.last_name).to eq('van den Hoogenband')
    end

    it 'can be changed' do
      @person.last_name = "Twump"

      expect(@person.last_name).to eq("Twump")
    end
  end

  describe 'name' do
    it 'is initally set from params' do
      expect(@person.name).to eq('Boris Manchump')
    end

    it 'updates when first_name is changed' do
      @person.first_name = "Henry"
      expect(@person.name).to eq("Henry Manchump")
    end

    it 'updates when last_name is changed' do
      @person.last_name = "Twump"
      expect(@person.name).to eq("Boris Twump")
    end
  end

  describe 'dob' do
    it 'is initally set from params' do
      expect(@person.dob).to eq('13/1/1989')
    end

    it 'can be changed' do
      @person.dob = "11/11/1911"
      expect(@person.dob).to eq("11/11/1911")
    end
  end
end
