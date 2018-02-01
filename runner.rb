require_relative ('./models/game.rb')
require_relative ('./models/combo_checker.rb')


puts "welcome to bloody mastermind"

puts "how hard do you want it to be?"

difficulty = gets.chomp.to_i

game = Game.new

game.create_solution(difficulty)




puts "ok cool let's guess"
guess = gets.chomp



until game.win?
  game.take_turn
end

puts "you got it! the answer was #{game.solution} all along!"

