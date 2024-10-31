require_relative '../lion'

RSpec.describe Lion do
  describe '#talk' do
    it 'returns a sentence stating the simba roars' do
      lion = Lion.new('Simba')
      expect(lion.talk).to eq('Simba roars')
    end
    it 'returns a sentence stating the tobias roars' do
      lion = Lion.new('Tobias')
      expect(lion.talk).to eq('Tobias roars')
    end
  end

  describe '#eat' do
    it 'overrides the Animal#eat and returns a CRUEL sentence' do
      simba = Lion.new('Simba')
      actual = simba.eat('a gazelle')
      expect(actual).to eq('Simba eats a gazelle. Law of the jungle!')
    end
  end
end
