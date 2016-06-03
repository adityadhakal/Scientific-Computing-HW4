function [x] = secant(f,a,b,tc)
%function [x] will take in a non linear function f and then two initial
%parameters a and b to evaluate them.
%tc is the terminating condition, in this case it is a number eg. 10^-7
%if the output of two consecative iterations differ by number lower than
%the terminating condition then we will terminate the program.
%also e is the upper bound on the error

format long


%variable to test termination 
y1 = 2*a;

%variable for the loop
loop = 1;
counter = 0;
%setting up display
disp('step          x1                       x2           x3               y')
disp('-----      --------                ------          -----           ----')
%infinite loop starts here with terminating condition
while loop
    
    c = f(a); d = f(b);
    y = f(a);
    e = a - c*((a-b)/(c-d));
    counter = counter+1;
    disp([counter a b e y])
    %disp('y1')
    %disp(y1)
    %if the y is zero, it is solved
    if y == 0.0
        loop = 0;
    end
    
 
    %termination
    if abs(abs(y1)-abs(y)) < tc
        loop = 0;
    else
        y1 = y;
        b = a;
        a = e;
    end
   
end

