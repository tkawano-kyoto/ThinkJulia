# Chapter10 Exercise 10-1

function nestedsum(arrays)
    total=0
    for i in eachindex(arrays)
        total += sum(arrays[i])
    end
    return total
end

# t=[[1,2],[3],[4,5,6]];
# nestedsum(t) -> 21


# Chapter10 Exercise 10-2

function cumulsum(array)
    new_array=[]
    for i in eachindex(array)
        push!(new_array,sum(array[1:i]))
    end
    return new_array
end

# t=[1,2,3]
# print(cumulsum(t))

# Chapter10 Exercise 10-3,4

function interior(array)
    return  new_array=array[2:end-1]
 end

# t=[1,2,3,4];
# print(interior(t)) ->[2,3]

 function interior!(array)
    array[2:end-1]
 end

 # inte =interior!(t)
 # print(inte) -> [2,3]

 # Chapter10 Exercise 10-5


 function issort(array)
    for i in eachindex(array)
        j=i
        for j in i:length(array)
            if array[i] > array[j]
                return false
            end
            j += 1
        end
    end
    return true
end

# issort([1,2,2]) -> true
# issort(['b','a']) -> false


# Chapter10 Exercise 10-6

function isanagram(str1,str2)
    if length(str1) != length(str2)
        return false
    end
    temp_str=""
    t1=collect(str1)
    t2=collect(str2)
    for i in eachindex(t1)
        k=length(t2)
        for j in 1:k
            if t1[i] == t2[j]
                temp_str *= t1[i]
                splice!(t2,j)
                break
            end
            k -= 1
        end
    end
    if temp_str==str1
        return true
    else
        return false
    end
end

# isanagram("time","meit") -> true


# Chapter10 Exercise 10-7

function hasduplicates(array)

    for i in eachindex(array)
        k=length(array)
        j=i+1
        while j <= length(array)
            if  array[i] == array[j]
                return true
            end
            j += 1
        end
    end
    return false   
end

# hasduplicates(['a','b','z','b','m']) -> true


# Chapter10 Exercise 10-8

function birthday_paradox(student_n)
    array = rand(1:365,student_n)
    return hasduplicates(array)
end

# count =0
# for i in 1:100
#     if birthday_paradox(23)
#         global count += 1
#     end
# end
# println(count/100) -> 0.46
    

# Chapter10 Exercise 10-9

# first

function read_word()
    array=[]
    for line in eachline("words.txt")
        push!(array,line)
    end
    return array
end

# longer

function read_word2()
    array=[]
    for line in eachline("words.txt")
        array = [array...,line]
    end
    return array
end


# Chapter10 Exercise 10-10

function read_word()
    w_array=[]
    for line in eachline("words.txt")
        push!(w_array,line)
    end
    return w_array
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

h_array =read_word();

@btime inbisect(h_array,"play")
@btime "play" ∈ h_array