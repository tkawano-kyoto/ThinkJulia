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