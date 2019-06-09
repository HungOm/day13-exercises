# Debug this code to pass rspec! There are 2 mistakes to fix.

# Write a method, prime?, that accepts an Integer. 
# It should return a boolean indicating whether or not the given number is a prime. 
# A prime number is only divisible by 1 and itself, it should have no other divisors.

require "byebug"

# def prime?(num)
#     byebug
#     return false if num < 2
#     (2..(num-1)).each do |factor|
#         # byebug  
#         if num % factor == 0
#             false
#         end
#         true
#     end
#     # false
# end



def prime?(num)
    # byebug
    return false if num < 2

    (2...(num)).each do |factor|
        if num % factor == 0
            return false
        end
    end
    true
end
puts prime?(23)