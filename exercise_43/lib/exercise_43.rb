
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