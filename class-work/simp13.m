function [ I ] = simp13( a, b, f, n )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

if mod(n, 2)
    disp('n must be even');
    return
end

h = (b-a)/n;

if numel(f) > 1
    I = (h/3)*(f(1)+f(n+1) + 4*sum(f(2:2:n)) + 2*sum(f(3:2:n-1)));
else
    x = a:h:b;
    I = (h/3)*(f(x(1))+f(x(n+1)) + 4*sum(f(x(2:2:n))) + 2*sum(f(x(3:2:n-1))));
end

end

