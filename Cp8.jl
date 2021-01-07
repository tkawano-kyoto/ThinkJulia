# Chapter8 Exercise 8-4

function find1(word,letter,first)
    new_word=word[first:end]
    index = firstindex(new_word)
    while index <= sizeof(new_word)
        if new_word[index] ==letter
            return index+first-1
        end
        index = nextind(new_word,index)
    end
    -1
end

# Chapter8 Exercise 8-5

function my_count(word::String,letter)
    counter = 0
    for ch in word
        if ch == letter
            counter = counter + 1
        end
    end
    return counter
end

# Chapter8 Exercise 8-6

function isreverse(word1,word2)
    if length(word1) != length(word2)
        return false
    end
    i=firstindex(word1)
    j=lastindex(word2)

    while  i <= length(word1)
        if word1[i] != word2[j]
            return false
        end
        i=nextind(word1,i)
        j=prevind(word2,j)
    end
    true
end

# Chapter8 Exercise 8-8

count(isequal('a'),"banana")


# Chapter8 Exercise 8-11 


function caecer_cipher(str,shift)
	
	alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	decipher = ""
	upper_str = uppercase(str)
	
	i = firstindex(upper_str)
	
	while i <= length(upper_str)
		j = findfirst(upper_str[i],alphabet)
		j -= shift
		if j < 1
			j = 26 + j
		end
		decipher *= alphabet[j]
		i = nextind(upper_str,i)
	end
	return decipher
	
end

# test = "ZDWDVLQRQDPDHZDQDNDQRGHVXABC" <-- WATASINOMAMAEWANAKANODESU
# caecer_cipher(test,3)


function caecer_dicipher(str,shift)
	
	alphabet = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
	cipher = ""
	upper_str = uppercase(str)
	
	i = firstindex(upper_str)
	
	while i <= length(upper_str)
		j = findfirst(upper_str[i],alphabet)
		j += shift
		if j > 26
			j = j - 26
		end
		cipher *= alphabet[j]
		i = nextind(upper_str,i)
	end
	return cipher
end

# test = WATASINOMAMAEWANAKANODESU"  <--  "ZDWDVLQRQDPDHZDQDNDQRGHVXABC"
# caecer_dicipher(test,3)
