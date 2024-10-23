# OPEN  FROM 9  to 12
# CLOSE FROM 12 to 13
# OPEN  FROM 13 to 18

puts 'What time is it? (hour)'
hour = gets.chomp.to_i

if (hour >= 9 && hour < 12) || (hour >= 13 && hour < 18)
  puts 'STORE IS OPEN!'
else
  puts 'Store is CLOSED!'
end
