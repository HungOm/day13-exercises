# Run `bundle exec rspec` and satisy the specs.
# You should implement your methods in this file.
# Feel free to use the debugger when you get stuck.

def prime?(num)
    return false if num < 2
    (2...num).each do |factor|
        if num % factor == 0
            return false
        end
    end
    true
end
def largest_prime_factor(num)
    return "Please try greater than 1" if num < 2
    factor_arr=[]

    (2..num+1).each do |factor|
        if num % factor == 0
            if prime?(factor)
                (factor_arr<<factor).sort
            end
        end
    end
    factor_arr[-1]
end

# p largest_prime_factor(1)

# ==========================================

def unique_chars?(arr)
    for i in 0..arr.size-1
        index =1
        while index < arr.size
            if arr[i+index] ==nil
                break
            elsif arr[i]== arr[i+index]
                return false
            end
            index += 1
        end
    end
   true
end

# p unique_chars?('mississppi')
# =============================

#dupe_indices Psuedo code
# ===============
# create empty hash and array
#store the value merged values in array for hash
# use each with index to loop words and it's index
# nested loop using upto..lenght times iterations to use another parallel index
#compare the index number of the nested loop and the word value of similar syntax
# if the index from the nested and word value is exactly the same ad it in new hash

# -----------------------------------
def dupe_indices(array)
    
    word_hash = Hash.new(0)
    embed_arr=[]
    array.each_with_index do |wr,index|
        counter =0
        
        (index+1..array.size-1).each do |counter|
            if wr == array[counter]
                # if word_hash.include? wr then !word_hash[wr].include? index do
                #     word_hash[wr]<<index
                # end
                word_hash[wr]=[index,counter]
            end
            # p embed_arr
        
        end
        # p embed_arr
        # word_hash[wr]=embed_arr

    end
    word_hash
end

# p dupe_indices(["a", "a", "c", "c", "b", "c"])

def ana_array(array1,array2)
    return false if array1.size != array2.size
    array1.each_with_index do|char,index|
        array2.each_with_index do |wrd,i|
            if char != wrd
                return true 
            end
            true

            retu
        if array1[index] != array2[index]
            # p "#{array1[index]}#{array2[index]}"
            return false
        end
    end
    true

end


# p ana_array(["cat", "dog", "cat"],["dog", "cat", "mouse"])

