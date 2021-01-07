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

 