include("PhasePortraitV2.jl")
#function for the oscillator in problem set 5, problem 2
#x1:range of x1 values (i.e. c_a values)
#x1:range of x2 values (i.e. c_r values)
#Use '@' to apply calculations across all rows
#Returns computed (dx1/dt, dx2/dt) over the range of (x1,x2)

function toggleMono(x1, x2)
  ror = 1.0
  rr = 100.0
  roa = 100.0
  ra = 5000.0
  da = 30.0

  u = @. -da*x1 + (roa+ra*x1^2)/(1+x1^2+x2^2)
  v = @. -x2 + (ror+rr*x1^2)/(1+x1^2)

  return(u,v)
end

#Range of x1, x2 values
x1range = (0,200,15)  #Has the form (min, max, num points)
x2range = (0,100,15)  #Has the form (min, max, num points)
xo = ([1.0, 10.0],)   #initial state vector

tspan=(0.0,30.0)      #time span

phaseplot(toggleMono, x1range, x2range, xinit=xo, t=tspan, clines=true, norm=true, scale=0.5)
