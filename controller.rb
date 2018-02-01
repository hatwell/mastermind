require('sinatra')
require_relative('models/game')

puts "bluebs"
get '/' do
  puts "bluebs in method"
  return "Harro"
end