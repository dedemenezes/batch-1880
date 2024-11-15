# Ternary Syntax

# CONDITION ? code_if_truthy : code_if_falsey

computer_coin = ['heads', 'tails'].sample

puts "heads or tails?"
guess = gets.chomp

verb = guess == computer_coin ? 'won' : 'loose'

puts "You #{verb}"
