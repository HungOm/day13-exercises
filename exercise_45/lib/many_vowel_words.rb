# Debug this code to pass rspec! There are 2 mistakes to fix.

# Write a method, many_vowel_words, that accepts a sentence as a String
# The method should return a new sentence containing only the words that contain two or more vowels.

require "byebug"

def many_vowel_words(sentence)
    words = sentence.split(" ")

    new_words = words.select do |word|
        num_vowels = num_vowels(word)
        num_vowels >= 2
    end

    new_words.join(" ")
end

def num_vowels(word)
    count = 0
    word.each_char do |char|
        # byebug
        count += 1 if char.match(/[aeiou]/)
        # byebug
    end
    count
end

# puts many_vowel_words("Hello world, how are you")