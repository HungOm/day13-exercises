# Debug this code to pass rspec! There is 1 mistake to fix.

# Write a method, half_and_double,that accepts an array of Integers
# The method should return a new array where every even number is divided by 2 and every odd
# number is multipled by 2.

require "byebug"

def half_and_double(array)
    new_array = array.map do |num|
        if num % 2 == 0
            num / 2
        else
            num * 2
        end
    end
# byebug
    new_array
end

# puts half_and_double([4,5,7,10])