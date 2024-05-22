clc;
clear all;
n=input('enter the value=');
if mod(n, 2) ~= 0
    error('Number of intervals n must be even for Simpson''s rule.');
end
h=input('enter the value=');

% Initialize an array to hold the function values
f = zeros(1, n+1);  % Pre-allocate the array for efficiency

for i=1:n+1
    f(i)=input('enter the value of f(i)=');
end
sum=((f(1))+f(n+1));
for i=2:n
    sum=sum+4*f(i);
end
for i=3:n-1
    sum=sum+2*f(i);
end
integral=h*(sum/3);
integral
