A=ceil(3*rand+2);           %Assign a random integer between 3 and 5 to A
B=fix(4*rand+3);            %Assign a random integer between 4 and 7 to B
M=round(10*rand(A,B));      %Assign a random integer between 0 and 10 to the A-by-B matrix M
disp(strcat('In a matrix of ', num2str(A),' row ',num2str(B),' columns'));  %Display the number of rows (A) and columns (B) of matrix M
for i=1:A                   %Increment I from 1 to A (rows)
    for j=1:B               %Increment J from 1 to B (columns)
        disp(strcat('Row ',num2str(I),' column ', num2str(J),' is ', num2str(M(I,J)) )); %Display the values of row A and column B of matrix M
    end                     %Return to line 6
end                         %Return to line 5