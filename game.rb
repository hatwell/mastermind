
class Game

  attr_reader :solution
  attr_accessor :player_guesses, :game_length, :won


  def initialize()
    @guess_count = 0
    @game_length = 10
    @won = false
    @player_guesses = []
    @solution = []
  end

  def create_solution(difficulty)
    difficulty.times {solution.push(rand(4))}
  end

end
