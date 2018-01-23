require('minitest/autorun')
require_relative '../game'

class GameTest < MiniTest::Test
  def setup
    @game = Game.new()
  end

  def test_create_solution_creates_an_array_with_same_length_as_game_difficulty
    @game.create_solution(4)
    assert_equal(4, @game.solution.length)
  end
end