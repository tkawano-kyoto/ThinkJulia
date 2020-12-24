# Chapter4 Exercise 7-2

function mysqrt(a)
    x=a
    while true
        #println(x)
        y=(x + a/x) / 2
        if( y == x)
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
        x=mysqrt(i)
        print(i,"\t",x,"\t")
        y=sqrt(i)
        print(y,"\t")
        println(y-x)
    end
end

#testsquaeroot()