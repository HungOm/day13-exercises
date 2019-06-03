
def average(a,b)
    a =a.to_f
    b =b.to_f
    (a+b)/2

end

# ==========================================
def average_array(a)
    a.inject{|ac,elements|ac+elements}.to_f/a.size
end

def repeat(a,b)

    a * b

end
# ===========================================

def yell(a)
    a.upcase + "!"
end
#===========================================
def alternating_case(a)
    list = a.downcase.split(" ")

    # puts "#{list}"
    
    # list of words broke down from sentence by split methods
    new_list =[]
    
    list.each_with_index do |word, index|
        if index.even?
            new_list << word.upcase
        else
            new_list << word
        end
    end

    # new_list.join(" ")
    return new_list.join(" ")


end
# ===============================================

def hipsterfy(word)
    #get the last vowels of a word using regex match
    
    new_word = word.sub(/[aeiou](?=[^aeiou]*\z)/,"")
    # puts new_word
end

# hipsterfy("Hey I am good")

# ===================================================


def vowel_counts(string)
    string1 = string.downcase
    string2 = string1.scan(/[aeiou]/)
    
    vowels =Hash.new(0)
    for i in string2 do 
        count = 1 
        vowels[i.downcase] += count
    end
    return vowels
end
# puts vowel_counts("code bootcamp") == {"o"=>3, "e"=>1, "a"=>1}


# ====================================
def caesar_cipher(string, shift_factor)
    alphabets = Array('a'..'z')
    new_string = ""
    new_arr=[]
    my_string = string.scan(/./)
    for i in my_string do
        if alphabets.include?(i.downcase)
            shift_factor.times do
                i = i.next
                
            end
        end
        # use the last index to make sure only one item from each iteration is added
        # Note -- from the first iteration it is return two items namely -AB
        new_arr<<i[-1]
    end
    new_arr.join('')
end

# ======================