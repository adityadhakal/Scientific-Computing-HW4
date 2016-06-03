function [x] = bisection(f,a,b,tc)
%function [x e] will take in a non linear function f and then two initial
%parameters a and b to evaluate them.
%tc is the terminating condition, in this case it is a number eg. 10^-7
%if the output of two consecative iterations differ by number lower than
%the terminating condition then we will terminate the program.
%also e is the upper bound on the error

format long
%first testing if a and b fall on the different sign
c = f(a); d = f(b);

%variable to test termination 
y1 = 2*c;

if c*d >0.0
    error('Function has same sign at both A and B, select different A and B')
end
%variable for the loop
loop = 1;
counter = 0;
%setting up display
disp('step          x                       y')
disp('-----      --------                ------')
%infinite loop starts here with terminating condition
while loop
    x = (a+b)/2;
    y = f(x);
    counter = counter+1;
    disp([counter x y])
    %disp('y1')
    %disp(y1)
    %if the y is zero, it is solved
    if y == 0.0
        loop = 0;
    end
    
    %if not solved change the a and b
    if c*y<0
        b = x;
    else
        a = x;
    end
    
    %termination
    if abs(abs(y1)-abs(y)) < tc
        loop = 0;
    else
        y1 = y;
    end
    %    disp('No. of iterations')
    %disp(counter)
 %   e = (b-a)/2;
end

