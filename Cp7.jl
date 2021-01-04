# Chapter7 Exercise 7-2

function mysqrt(a)
    x = a
    while true
        # println(x)
        y = (x + a / x) / 2
        if ( y == x)
            break
        end
        x = y
    end
    return x
end

function testsquaeroot()
    println("a\tmysqrt\t\t\tsqrt\t\t\tdiff")
    println()
    println("-\t------\t\t\t----\t\t\t----")
    println()
    for i in 1:9
        x = mysqrt(i)
        print(i, "\t", x, "\t")
        y = sqrt(i)
        print(y, "\t")
        println(y - x)
    end
end

# testsquaeroot()


# Chapter7 Exercise 7-3

function evalloop()
    while true
        print("> ")
        line = readline()
        if line == "done"
            break;
        end
        expr = Meta.parse(line)
        println(eval(expr))
    end
    println("Done")
end

# evalloop()


# Chapter7 Exercise 7-4

function frac(n)
    if !(n isa Int64) 
        error("Factorial is only defined for integers.")
    elseif n < 0
        error("Factorial is not defined for negative integers.")
    else
        return  n == 0 ? 1 :  n * frac(n - 1)
    end
end

function estimatepi(k)
    estimated_π = 0.0
    while (abs(estimated_π - π)) < 10^-15 
        # estimated_π = 0.0
        for i in 0:k
            temp = frac(4 * i) * (1103 + 26390i) / (frac(i)^4 * 396^(4i))
            global estimated_π += temp
        end
        estimated_π *= 2 * sqrt(2) / 9801
        estimated_π = 1 / estimated_π
    end
    return estimated_π
end

function repeat_k(k)
    temp_π = 0.0
    for i in 0:k
        temp = frac(4 * i) * (1103 + 26390i) / (frac(i)^4 * 396^(4i))
        temp_π += temp
    end
    temp_π *= 2 * sqrt(2) / 9801
    temp_π = 1 / temp_π
end

function estimatepi()
    k = 0
    temp_π = 0
    while (temp_π - π) < 10^-15 
        temp_π = repeat_k(k)
        k = k + 1
    end
    return temp_π
end

# estimated_π()