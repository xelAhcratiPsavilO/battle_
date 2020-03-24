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
end
