require 'player'
describe Player do
  subject(:stephan) {Player.new('Stephan')}
  subject(:daria) {Player.new('Daria')}
  it 'stores the name' do
    expect(stephan.name).to eq 'Stephan'
  end

  describe '#hit_points' do
    it 'returns the hit points' do
      expect(stephan.health).to eq described_class::DEFAULT_HEALTH
    end
  end

  describe '#attack' do
    it 'damages the player' do
      expect(daria).to receive(:receive_damage)
      stephan.attack(daria) 
    end
  end

  describe '#receive_damage' do
    it 'reduces the player hit points' do
      expect { daria.receive_damage }.to change { daria.health }.by(-10)
    end
  end
end