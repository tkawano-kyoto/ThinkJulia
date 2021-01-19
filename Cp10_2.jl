# Chapter10 Exercise 10-11

function read_word()
    w_array=[]
    for line in eachline("words.txt")
        push!(w_array,line)
    end
    return w_array
end

function reverse(word)
    r_word = ""
    i = length(word)
    while i >= 1
        r_word *= word[i]
        i -= 1
    end
    return r_word
end

function inbisect(w_array,word)
    half=length(w_array) ÷ 2
    i=1
    j=length(w_array)
    while half > length(word)
        t_array = w_array
        if t_array[half][1] >= word[1] # left
            
            j=half
            t_array=t_array[i:j]
            if word ∈ t_array
                return true
            end
        else # right
            i=half
            t_array=t_array[i:j]
           if word ∈ t_array
                return true
            end
        end
        half ÷= 2
    end
    return false
    
end

function reversepairs(w_array)
    result = []
    for i in eachindex(w_array)
        temp = reverse(w_array[i])
        if inbisect(w_array,temp) # true
           #push!(result,temp)
            println(w_array[i]," ",temp)
        end
    end
    # return result
end

