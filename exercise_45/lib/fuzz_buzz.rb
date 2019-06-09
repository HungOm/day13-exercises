# Debug this code to pass rspec! There is 1 mistake to fix.

# Write a method, fuzz_buzz, that accepts an Integer
# The method should return an array of numbers from one to the given number that are not divisible by 3 or 5.

require "byebug"

def fuzz_buzz(num)
    numbers = []

    (1..num).each do |number|
        if number % 5 == 0 || number % 3 == 0
            next
        end
        numbers<<number
        # byebug
    end
    numbers
end
# puts "#{fuzz_buzz(11)}"