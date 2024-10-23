puts 'What do you want to do? [read|write|exit]'
action = gets.chomp

# case action
# when 'read'
#   puts 'Entering the READ mode'
# when 'write'
#   puts 'Entering the WRITE mode'
# when 'exit'
#   puts 'See you soon! zo/'
# else
#   puts 'Wrong action...'
# end

case action
when 'read'
  puts 'Entering the READ mode'
when 'write'
  puts 'Entering the WRITE mode'
when 'exit'
  puts 'See you soon! zo/'
else
  puts 'wrong action'
end
