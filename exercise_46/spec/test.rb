def o_words(sentence)
    words=sentence.split(' ')
    new_arr = words.select {|word|word if word.downcase.include?'o'}
    new_arr
end

p o_words("I love you hey yay pretty")