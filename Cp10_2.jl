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

function inbisect(w_array, word)
    low = 1
    high = length(w_array)
    while low <= high
		mid =(low + high) ÷ 2
		#mid = div((low + high),2)
        if w_array[mid] == word
            return true
        elseif w_array[mid] < word
            low = mid + 1
        else
            high = mid - 1
		end
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
        splice!(w_array,i)
    end
    # return result
end

