include("PhasePortraitV2.jl")
#function for the toggle switch in problem set 5, problem 3
#x1:range of x1 values (i.e. u values)
#x1:range of x2 values (i.e. v values)
#Use '@' to apply calculations across all rows
#Returns computed (dx1/dt, dx2/dt) over the range of (x1,x2)

function toggleMono(x1, x2)
  alpha = 10
  n = 1

  u = @. alpha/(1+x2^n)-x1
  v = @. alpha/(1+x1^n)-x2

  return(u,v)
end

#Range of x1, x2 values
x1range = (0,10,15)  #Has the form (min, max, num points)
x2range = (0,10,15)  #Has the form (min, max, num points)


tspan=(0.0,30.0)    #time span

phaseplot(toggleMono, x1range, x2range, xinit=(), t=tspan, clines=true, norm=true, scale=0.5)
