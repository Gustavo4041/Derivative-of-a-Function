%Gustavo Lopez Celestino - Engr_5 - Lab 14.3 Special Functs. For
%Polynomials

%this script will ask the user for the coefficients and integration
%constant of a cubic function (C). Will then report the functions for the
%derivative and integral of the function

coeffs = input(["Enter the coefficients for the cubic polynomial in " + ...
    "the form [a b c d]\n"]);
y0 = input("Enter the inegration constant for the function:\n");

polyDer = polyder(coeffs);
polyInt = polyint(coeffs,y0);

fprintf("The derivative of the function is %gx^2 + %gx + %g\n",polyDer);
fprintf("The integral of the function is %gx^4 + %gx^3 + %gx^2 + %gx + %g\n",polyInt);





