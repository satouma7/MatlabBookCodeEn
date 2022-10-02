A=rand(3,4);                %Assign random numbers to the 3-by-4 matrix A
S1=0;S2=0;                  %Assign 0 to S1 and S2
for I=1:3                   %Increment I from 1 to 3 (rows)
    for J=1:4               %Increment J from 1 to 4 (columns)
        S1=S1+A(I,J);       %Add the elements of A to S1 and assign to S1
        S2=S2+A(I,J)^2;     %Add the square of the elements of A to S2 and assign to S2
    end                     %Return to line 4
end                         %Return to line 5
S1                          %Display the contents of S1
S2                          %Display the contents of S2