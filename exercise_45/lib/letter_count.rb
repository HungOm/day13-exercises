# Debug this code to pass rspec! There are 3 mistakes to fix.

# Write a method, letter_count, that accepts a String and a Character
# The method should return the number of times that the character appears in the string.

require "byebug"

def letter_count(string, char)
    count = 0
    string.each_char do |c| 
        count += 1 if c.downcase == char
    end
    count
end

# puts "#{letter_count("MISSIPI","i")}"