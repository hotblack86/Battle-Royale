require 'player'

describe Player do
  subject(:ahab) { Player.new('Ahab') }

  describe '#name' do
    it 'returns the name' do
      expect(ahab.name).to eq 'Ahab'
    end
  end
end