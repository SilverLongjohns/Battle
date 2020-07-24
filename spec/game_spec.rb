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
end