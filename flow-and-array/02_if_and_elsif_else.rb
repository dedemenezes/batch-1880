# if CONDITION
  # code if truthy
# end

puts 'How old are you?'
age = gets.chomp.to_i

condition = age >= 16

if condition
  puts 'You can vote'
else
  puts "You can\'t vote"
end

# if !(age >= 18)
unless age >= 18
  puts "You cannot drive!"
else
  puts "You can drive!"
end
