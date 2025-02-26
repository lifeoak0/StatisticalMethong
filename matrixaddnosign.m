% there is two matrices A and B 
A = [2, 4, 5; 4, 7, 8; 19, 22, 33];

B = [24, 42, 82; 31, 78, 99; 13, 13, 41];

if size(A) ~= size(B)
    error('matrices must ahve the same dimenstions for addition');
end

MatrixSum = zeros(size(A));

for i = 1:size(A,1)
    for j = 1:size(A,2)
        MatrixSum(i, j) = A(i, j) + B(i, j);
    end
end

disp('sum of A aND b WITHOUT  using +');
disp(MatrixSum);