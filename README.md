# Scientific-Computing-HW4
How to use this:

All the four functions are in files named functiona.m, functionb.m, functionc.m, functiond.m.
The derivative of the functions are in functionadash.m, functionbdash.m .... respectively.
The root finding algorithms are in bisection.m, newton.m and secant.m

Now, to run we have to follow the following instructions:

first assign a variable to represent the function. If we take functiona.m and want to use it in bisection algorithm, we would do:

f1 = @functiona

Now, we can pass f1 to bisection as:

x = bisection(f1, a, b, tolerance)

where, a, is first guess, b is 2nd guess number and tolerance is terminating condition. I usually use 10^-10 as terminating condition. 
when the two consecutive solutions differ by less than 10^-10, I would say we found the minima and terminate the program.

also a and b should have two different signs, so please try f1(a) and f1(b) first and see if they have different signs.


Now for Newton's method, we need derivative of the function. The newton method's function look like

newton(f, f', a, tolerance)

so we could do:

f1d = @functionadash

x = newton(f1,f1d,a,tolerance)

a is the starting point. Please see, some starting points don't converge So choose another one if the program doesn't end.


