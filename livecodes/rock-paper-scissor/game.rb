# 1. define the hands options
hands_options = ['rock', 'scissors', 'paper']

# START LOOP
play_again = '' # INITIALIZE VARIABLE

while play_again != 'no'

  # 2. choose your option
  # 2.1 ask for the user to hand
  puts "Choose your hand"
  # 2.2 get the user hand
  user_hand = gets.chomp
  # 3. choose computer option
  computer_hand = hands_options.sample
  # 4. compare user choice against computer choice
  if computer_hand == user_hand
    result = 'DRAW'
  elsif computer_hand == 'rock' && user_hand == 'paper'
    result = 'you won!'
  elsif computer_hand == 'paper' && user_hand == 'scissors'
    result = 'you won!'
  elsif computer_hand == 'scissors' && user_hand == 'rock'
    result = 'you won!'
  else
    result = 'You lost!'
  end

  # 5. print the outcome
  puts "#{result} The computer hand was #{computer_hand}"

  # END THE LOOP
  puts 'Do you want to play again?'
  play_again = gets.chomp
end

puts 'Goodbye zo/'
