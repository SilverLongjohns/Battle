class Game
  attr_reader :player_1, :player_2, :hotseat, :current_turn, :opponent
  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2

    @hotseat = [player_1, player_2]
    @current_turn = @hotseat[0]
    @opponent = @hotseat[1]
  end
  def attack(player)
    player.receive_damage
  end
  def end_turn
    @hotseat.shift
    @hotseat << @current_turn
    @current_turn = @hotseat[0]
    @opponent = @hotseat[1]
  end
end