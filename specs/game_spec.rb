require('minitest/autorun')
require('minitest/pride')
require_relative '../models/game'

class GameTest < MiniTest::Test
  def setup
    @game = Game.new
  end

  def test_create_solution_creates_an_array_with_same_length_as_game_difficulty
    @game.create_solution(4)
    assert_equal(4, @game.solution.length)
  end

  def test_create_solution_returns_array_of_integers
    assert_equal([], @game.solution)
  end
end