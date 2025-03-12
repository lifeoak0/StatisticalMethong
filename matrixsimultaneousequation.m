% Define the 3x3 matrix A and the vector k
A = [2, -1, 3; 1, 0, -2; 4, 1, 1];
k = [5; -3; 4];

% Call the function to solve the system
solution = solve3x3System(A, k);

% Display the solution
disp('The solution [x; y; z] is:');
disp(solution);

% Function to solve the 3x3 system using Cramer's rule
function solution = solve3x3System(A, k)
    % This function solves a system of 3x3 linear equations A*x = k using Cramer's rule
    % Input: A - a 3x3 matrix
    %        k - a 3x1 column vector
    % Output: solution - a 3x1 column vector containing the solution [x; y; z]

    % Check if A is 3x3 and k is 3x1
    if size(A, 1) ~= 3 || size(A, 2) ~= 3 || length(k) ~= 3
        error('Matrix A must be 3x3 and vector k must be 3x1.');
    end

    % Calculate the determinant of A
    detA = calculate3x3Determinant(A);
    if detA == 0
        error('The system has no unique solution (determinant is zero).');
    end

    % Calculate the determinants of matrices with columns replaced by k
    A1 = A; A1(:, 1) = k; % Replace 1st column with k
    detA1 = calculate3x3Determinant(A1);

    A2 = A; A2(:, 2) = k; % Replace 2nd column with k
    detA2 = calculate3x3Determinant(A2);

    A3 = A; A3(:, 3) = k; % Replace 3rd column with k
    detA3 = calculate3x3Determinant(A3);

    % Calculate the solution using Cramer's rule
    x = detA1 / detA;
    y = detA2 / detA;
    z = detA3 / detA;

    % Return the solution as a column vector
    solution = [x; y; z];
end

% Function to compute the determinant of a 3x3 matrix
function detValue = calculate3x3Determinant(A)
    % This function calculates the determinant of a 3x3 matrix A
    % Input: A - a 3x3 matrix
    % Output: detValue - the determinant of matrix A

    % Check if A is a 3x3 matrix
    if size(A, 1) ~= 3 || size(A, 2) ~= 3
        error('Matrix must be 3x3.');
    end

    % Compute the determinant using the 3x3 determinant formula
    detValue = A(1,1)*(A(2,2)*A(3,3) - A(2,3)*A(3,2)) ...
             - A(1,2)*(A(2,1)*A(3,3) - A(2,3)*A(3,1)) ...
             + A(1,3)*(A(2,1)*A(3,2) - A(2,2)*A(3,1));
end

