using ThinkJulia

# Chapter4 Exercise 4-7

function polyline(t,n,len,angle)
    for i in 1:n
            forward(t,len)
            turn(t,-angle)
        end
end

function arc(t,r,angle)
    arc_len = 2 * π *r * (angle/360)
    n = trunc(arc_len / 3) +1
    step_len = arc_len / n
    step_angle = angle / n
    polyline(t,n,step_len,step_angle)
end

function circle(t,r)
    arc(t,r,360)
end

function polygon(t,n,len)
    angle = 360 / n
    polyline(t,n,len,angle)
end


# 🐢=Turtle()
# @svg begin
#     arc(🐢,20,180)
# end
       
