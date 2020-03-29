
class Game
  attr_reader :current_turn, :awaiting_turn

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
    @awaiting_turn = player_2
  end

  def attack(player)
    player.receive_damage
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def switch_turns
    @current_turn = opponent_of(current_turn)
    @awaiting_turn = opponent_of(awaiting_turn)
  end

  def game_over?
    losing_players.any?
  end

  def loser
    losing_players.first
  end

  private
  attr_reader :players

  def losing_players
    players.select { |player| player.hit_points <= 0 }
  end

  def opponent_of(the_player)
    players.select { |player| player != the_player }.first
  end
end
