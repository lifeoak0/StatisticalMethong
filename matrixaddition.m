% Input matrices A and B
A = [ 1, 2, 3; 4, 5, 6; 7, 8, 9];
% A= 1 2 3
%    4 5 6
%    7 8 9   example

B = [ 11, 12, 13; 14, 15, 16; 17, 18, 19];
% B= 11 12 13
%    14 15 16
%    17 18 19   example

% Check if the matrices have the same dimensions for addition
if size(A) ~= size(B)
    error('Matrices must have the same dimensions for addition.');
end

% Matrix addition using +
sumUsingPlus = A + B;
disp('Sum of A and B using +:');
disp(sumUsingPlus);

% Matrix addition without using +
% Initialize the result matrix
MatrixSum = zeros(size(A));

% Perform matrix addition manually
for i = 1:size(A, 1)
    for j = 1:size(A, 2)
        MatrixSum(i, j) = A(i, j) + B(i, j);
    end
end

disp('Sum of A and B without using +:');
disp(MatrixSum);

