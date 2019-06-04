require('minitest/autorun')
require('minitest/rg')
require_relative('../models/game')

class RockPaperScissorsTest < Minitest::Test

  def setup

    @game1 = RockPaperScissors.new("rock", "scissors")
    @game2 = RockPaperScissors.new("scissors", "rock")

  end

  def test_hand1
    assert_equal("rock", @game1.hand1)
  end

  def test_hand2
    assert_equal("scissors", @game1.hand2)
  end

  def test_play_game
    assert_equal("Player 1 wins!", @game1.play_game)
  end

  def test_play_game_player2
    assert_equal("Player 2 wins!", @game2.play_game)
  end
end
