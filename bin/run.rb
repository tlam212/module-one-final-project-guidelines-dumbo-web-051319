require_relative '../config/environment'



binding.pry

puts "HELLO WORLD"

cli = CommandLineInterface.new
cli.greet
