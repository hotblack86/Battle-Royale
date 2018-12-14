require 'player'

describe Player do
  subject(:ahab) { Player.new('Captain Ahab') }
  subject(:moby) { Player.new('Moby Dick') }

  describe '#name' do
    it 'returns the name' do
      expect(ahab.name).to eq 'Captain Ahab'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(ahab.hit_points).to eq described_class::DEFAULT_HP
    end
  end

  describe '#attack_move' do
    it 'damages the player' do
      expect(moby).to receive(:receive_damage)
      ahab.attack_move(moby)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { ahab.receive_damage }.to change { ahab.hit_points }.by(-10)
    end
  end


end