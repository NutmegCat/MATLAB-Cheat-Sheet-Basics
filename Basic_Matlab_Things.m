% Yo, this is just some basic things that you should know in MATLAB
% I'll try to keep things as explicit and simple as possible

%! First command, to clear the window, **it's clc, not clear**

%! Variables
% Variables do not need to be explicity. For example, "double x" is not a thing, nor is "float x"

x = 1; % This is a simple scalar variable
y = 2; % This is also a simple scalar variable

z = x + y; % You can add variables together

w = 1 + 2; % Numbers too, but don't do that it's werid

% To display the concents of a variable, just type the variable

x %This spits out the contents of the variable

%* Just a note, when you write ";" (semicolon) after a command or equation, it does not output into the terminal.

%! Saving Variables
% The command "clear" will clear the variables in your script
% To "save" them, you can use the command "save datafile.mat" to save.

x = 2;
y = 3;

save datafile.mat

% Now when you clear them, you can always bring them back
% To "bring them back" type out "load datafile.mat"

load datafile.mat

%! Special Math Things
% Pi exists

a = pi; % a is now equal to 3.14.......

%* sin and eigenvalues exist, and absolute values, basically a majority of math operations (???)

z = sqrt(9);
y = sin(z); 

%? Make sure to put them in parentheses

%! Guys we have matricies
% Linear Algebra comes to haunt us again, here's how we make matricies 
% In programming, they're called "Arrays"

x = [3 5]; % This is a 1 x 2 matrix
z = [3;5]; % This is a 2 x 1 matrix
c = [5 6 7 ; 8 9 10]; % This is a 2 x 3 matrix

y = 1:10; % This creates a 1x10 matrix with numbers from 1 to 10

%* The : operator in matricies has a step of 1 by default (the y matrix will go 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
%* However, we can change the spacing just like the following

z = 1:0.5:5;

% In this case, instead of the numbers going 1 2 3 4 5, it goes 1, 1.5, 2, 2.5, 3, 3.5, ... 5

%* If you know the number of elements you want in a vector (instead of the spacing between each element), you can use the linspace function.

b = linspace(1, 10, 5); % This creates a matrix that has 5 evenly spaced numbers between 1 and 10 (inclusive)
                        % The output would be the following: 1.0000	3.2500	5.5000	7.7500	10.0000

b = b'; % The single quote would turn the matrix into a transposed matrix

%* If you want a random N x N matrix, you can use the rand command.

N = 5; % This is the size of the matrix
x = rand(N); % This spits out a 5 x 5 matrix

y = rand(2,3); % This spits out a 2 x 3 matrix

%* If you want an N x N matrix wil just a single number for every element, you can specify the number

z = zeros(6,3); % This is a 6 x 3 matrix, but every element is a zero, idk how this is uselful

%! Indexing
% When refering to an element in a matrix, it's usually called by where it is (i-th row, j-th column)
% Refering to an element in a matrix is called indexing

%  1 2  3  4 5 6 7 8 9 10 <-- index value
% [1 10 58 6 8 0 1 2 7 9] <-- 1 x 10 matrix

% Here we have a 1 x 10 matrix with each element's corresponding index value

x(3); % This extracts the 3rd index in the matrix (in this case 58)
x(3) = 72; % This changes 58 into a 72

y(2:4); % This extracts a range of values, in this case 10, 58, and 6



% [1 10 58 6 8 0 1 2 7 9]   }
% [2 48 12 4 7 0 3 5 1 8]   } <-- Imagine this is a 2 x 10 matrix

x(2:4); % This refers to the 2nd row, 4th column element, in this case 4
x(1, :); % A colon with no numbers means that you want the entire row. The 1st row is extracted
y(:, 3); % A colon with no numbers means that you want the entire column. The 3rd column is extracted

number = matrix(2,3); % This will store the 2nd row, 3rd column element, that element is 12

x(1, end); % This refers to the first row, last column element, in this case 9
           % You can even do end - 1 for the second last column element

%! Scalar things
% You can do scalar addition

x = [1 2 3];
y = x + 2; % This adds 2 to the whole matrix

% You can also add two arrays, as long as they are the same size
% Scalar multiplication and division also works in the way you'd usually expect, but '*' does matrix multiplication, and '.*' does element-wise multiplication (multiplying each element with the other element).

%! Variable Manipulation
% If you have a matrix, and you want to have two variables be equal to the size of the matrix, do the following:

[x, y] = size(Matrix); % If the size of the matrix is 2 x 4, then x = 2, y = 4

%! Plotting (Graphing)
% Did you know you can make graphs in MATLAB? You can use the plot function.
% If you have two arrays, one named "x", and one named "y", you can use the plot function:

plot(x, y); % In your MATLAB IDE (or VS with the MATLAB extension), you'll see the graph that has been plotted. 

plot(x, y, "r--off"); % The part in the quotation marks cuztomize your graph. In this case, the line will be red, it'll be a dashed line, and each point will be an '*' character

%* If you want two lines on a single graph rather than two, use the "hold on" function in between the two plot functions.
%* To undo this, use "hold off" function