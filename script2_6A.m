M=round(rand(4,5)*10);  %Assign random integers between 0 and 10 to the 4-by-5 matrix M
for I=1:4               %Increment I from 1 to 4 (rows)
    for J=1:5           %Increment J from 1 to 5 (columns)
        disp(strcat('Row', num2str(I), 'column', num2str(J), 'is ', num2str(M(I,J)) )); %Display the value of row I and column J of matrix M
    end                 %Return to line 3
end                     %Return to line 2