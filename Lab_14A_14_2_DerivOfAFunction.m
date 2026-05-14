%using MATLAB to find the graph of the derivative of the function given

%set up x array from 0 to 10 with step size 0.01
x = 0:.01:10;
%IM CONFUSED ON WHY WE PUT X.^2 I THOUGHT IT WOULD ONLY BE X^2. MAYBE WE'RE
%SQUARING AN ARRAY ELEMENT??
y = 5*(x.^2).*exp(-.2*x).*sin(x);

%Find the central difference estimate 
n = length(x);
der = ((y(3:n) - y(1:n-2))./(x(3:n) - x(1:n-2)));
%plotting original function first
subplot(2,1,1)
plot(x,y,Color = 'b')
xlim([0 10])
grid on
title("Original Function")
xlabel("Time (seconds)")
ylabel("Distance (meters)")

%plotting derivative function
subplot(2,1,2)
plot(x(2:n-1),der,Color = 'r')
xlim([0 10])
grid on
title("Derivative Function")
xlabel("Time (seconds)")
ylabel("Distance (meters)")