require_relative ('combo_checker.rb')



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
    difficulty.to_i.times {solution.push(rand(4))}
    @solution
  end

  def compare_guess
    ComboChecker.check(@player_guesses.last, @solution)
  end

  def win?
    true if compare_guess.uniq == ['y']
  end

  def take_turn
    puts "let's guess!"
    guess = gets.chomp
    player_guesses << guess
    compare_guess
  end
cd
end
