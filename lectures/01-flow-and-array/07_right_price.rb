price = rand(1..5)

puts 'What is the price? (from $1 to $5)'
guess = gets.chomp.to_i

# while guess != price
#   puts 'What is the price? (from $1 to $5)'
#   guess = gets.chomp.to_i
# end

until guess == price
  puts 'What is the price? (from $1 to $5)'
  guess = gets.chomp.to_i
end

puts "You won! The price was #{price}"
