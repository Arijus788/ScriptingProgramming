% Laboratory Work 2
% Application of elementary functions and matrix operations
% Variant 2

% a) 
a = (-pi/2:0.5:3*pi).';

% b
b = a.^2;

% c)
c = sin(a + b);

% d) 
disp("Vector c as a row:")
disp(c.')


% 2. Matrices

% a)
Z = rand(3,3);

disp("Original matrix Z:")
disp(Z)

% b)
Z(2,:) = [];

disp("Z after removing the second row:")
disp(Z)

% c)
Z = Z.';

disp("Transposed matrix Z:")
disp(Z)

clc
clear

% Given values
A = 4;
f = 3;
sigma = 1;
U1 = 2.5;
U2 = 1.5;

% Time
t = 0:0.002:1.5;

% Signal
s = A*sin(2*pi*f*t);

% Noise
n = sigma*randn(size(t));

% Signal with noise
x = s + n;

% a)
selected = x(x > U1);

% b)
filtered = x;
filtered(abs(filtered) < U2) = 0;

% c)
number_all = length(x);

% d)
number_selected = length(selected);

% e) 
min_value = min(filtered);
max_value = max(filtered);

% results
disp("Number of all samples:")
disp(number_all)

disp("Number of selected samples:")
disp(number_selected)

disp("Minimum filtered value:")
disp(min_value)

disp("Maximum filtered value:")
disp(max_value)

clc
clear

A = input('Enter vector A with 10 elements: ');

B = [A(end:-1:6) A(1:5)];

disp('Vector B is:')
disp(B)
