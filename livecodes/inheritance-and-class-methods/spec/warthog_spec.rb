require_relative '../warthog'

RSpec.describe Warthog do
  describe '#talk' do
    it 'returns a sentence stating the pumbaa grunt' do
      warthog = Warthog.new('Pumbaa')
      expect(warthog.talk).to eq('Pumbaa grunts')
    end
  end
end
