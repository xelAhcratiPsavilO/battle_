require 'player'

describe Player do
  subject(:alex) { Player.new('Alex') }
  subject(:christina) { Player.new('Christina') }

  describe '#name' do
    it 'returns its name' do
      expect(alex.name).to eq 'Alex'
    end
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(alex.hit_points).to eq described_class::DEFAULT_HIT_POINTS
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(alex).to receive(:receive_damage)
      christina.attack(alex)
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { alex.receive_damage }.to change { alex.hit_points }.by(-10)
    end
  end

end
