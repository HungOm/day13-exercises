

def partition(array,num)

    # array.partition{|n|n if n<num}
    partised_arr = []
    left=[]
    right=[]
    for i in array do
        if i<num 
            left<<i
            
        else
            right<<i
            
        end
        # puts "left: #{left},right: #{right}"
    end
    partised_arr<<left
    partised_arr<<right
    partised_arr

end
# ====================================

def merge(hash1,hash2)
    hash1.merge(hash2)

end


# =======================================

def censor(string,arr)
    my_arr =string.split(" ")
    new_arr = []
    for i in my_arr
        if arr.include? (i.downcase)
            i=i.gsub(/[aeiouAEIOU]/,"*")
        end
        new_arr<<i
    end
    return new_arr.join(' ')
end
# puts censor("SHUT THE FRONT DOOR GOOD",['good'])
# ================================


def power_of_two?(num)

    num.times{|n|return true if num==1 ||2**(n+1) == num}
    false
end
# puts power_of_two?(8)



# ===================

def palindrome?(string)
    def match?(a,b)
        if a == b
            return true
        end
        false
    end
# --------------------
    new_st=[]
    count = string.size-1
    for i in string.scan(/./)
        new_st<<string[count]
        count -= 1
    end
    match?(string,new_st.join(''))
end

# puts palindrome?("mom")

# ======================

def substrings(string)

    final_array = []
    (string.length).times do |str|
        (str..string.length-1).each do |newstr|
            final_array<<string[str..newstr]
        end
    end
    final_array
end

# substrings("jump")

# ==========================


def palindrome_substrings(string)
    pal_sbstr=[]
    #convert string into sub string 
    # to chech each combination if they are palindrome
    # use the substirng mehtods defined ealier
    substr =substrings(string)
    substr.each do |str|
        # call the palindrome checker method defined ealier
        # exampt the a word in aplindrom
        if palindrome?(str) && str.length > 1
            pal_sbstr<<str
        end
    end
    pal_sbstr
end

puts palindrome_substrings("abracadabra")


