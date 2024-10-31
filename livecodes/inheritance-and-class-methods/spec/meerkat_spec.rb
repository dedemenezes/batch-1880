require_relative '../meerkat'

RSpec.describe Meerkat do
  describe '#talk' do
    it 'returns a sentence stating the Timon bark' do
      timon = Meerkat.new('Timon')
      expect(timon.talk).to eq('Timon barks')
    end
  end
end
