def acronymize(sentence)
  # PSEUDOCODE
  # 1. upcase the whole sentence
  upcased_sentence = sentence.upcase

  # 2. break the upcased sentence into words
  words = upcased_sentence.split

  # 3. make an array with the first letter
  # 3.1. create an empty array
  array = []
  words.each do |word|
    first_letter = word[0]
    # 3.2 select the first letter of EACH word
    # YOU WILL NEED TO ITERATE!
    # 3.3 add the first letter to the empty array
    array << first_letter
  end
  # p array
  # ['F','A','Q']
  # 4. Join the letters into a string
  array.join
end

puts acronymize('frequently asked questions') == 'FAQ'

puts acronymize('away from keyboard') == 'AFK'
