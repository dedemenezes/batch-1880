puts 'What time is it? (hour)'
hour = gets.chomp.to_i
# 24 hour clock

if hour < 12
  puts 'Good morning!'
elsif hour < 18
  puts 'Good afternoon!'
elsif hour >= 18
  puts 'Good evening!'
end
