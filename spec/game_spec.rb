require "game"

describe Game do
  subject(:game) { described_class.new(player_1, player_2) }
  let(:player_1) {double :player_1}
  let(:player_2) {double :player_2}

  describe "attack" do
    it "damages the player" do
      expect(player_2).to receive(:receive_damage)
      game.attack(player_2)
    end
  end

  describe "turns" do
    it "can switch turns" do
      game.end_turn
      expect(game.current_turn).to eq(player_2)
    end
  end
  describe "game over" do
    it "ends the game when hp=0" do
      allow(player_2).to receive(:dead?).and_return(true)
      expect(game.game_over).to eq "Game over"
    end
  end
end