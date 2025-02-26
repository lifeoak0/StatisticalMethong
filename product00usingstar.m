A = [1, 4, 5; 4, 5, 7; 6, 9, 14];

B = [24, 5, 6; 4, 5, 8; 9, 14, 512];

if size(A, 2) ~= size(B, 1)
    error('Number of columns in A must be equal to the nuymber of rows in B ');
end

matrixProduct = zeros(size(A, 2), size(B, 2));

for i = 1:size(A, 1)
    for j = 1:size(B, 2)
        for k = 1:size(A, 2)
        matrixProduct(i, j) = matrixProduct(i, j) + A(i, k) * B(k, j);
        end
    end
end

disp('matrix product of a and b without using .');
disp(matrixProduct);
