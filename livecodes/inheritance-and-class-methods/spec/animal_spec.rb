require_relative '../animal'

RSpec.describe Animal do
  describe '#initialize' do
    it 'creates an Animal instance' do
      expect(Animal.new('Barney')).to be_an(Animal)
    end
  end

  describe '#name' do
    it 'returns the animal name' do
      animal = Animal.new('Barney')
      expect(animal.name).to eq('Barney')
    end
  end

  describe '#eat' do
    it 'returns a sentence stating the animal is eating some food' do
      animal = Animal.new('Barney')
      actual = animal.eat('a carrot')
      expect(actual).to eq('Barney eats a carrot')
    end
  end

  describe '::phyla' do
    it 'returns an array with ten phyla from the animal kingdom' do
      expect(Animal.phyla.size).to eq(10)
    end
  end
end
