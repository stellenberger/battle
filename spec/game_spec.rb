require 'game'
describe Game do  
  
  let(:player1) {double :player}
  let(:player2) {double :player}
  subject(:game) {Game.new(player1, player2)}

  describe '#attack' do
    it 'damages the player' do
      expect(player2).to receive(:receive_damage)
      game.attack(player2) 
    end
  end

end