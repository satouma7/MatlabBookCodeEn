M=round(rand(1,100)*10);    %Assign random integers from 0 to 10 to a vector M with 100 elements
I=1;                        %Assign 1 to I
while M(1,I)<10             %If the I-th element of M is less than 10, execute the loop up to line 6
        disp(strcat(num2str(I),'-th value is ',num2str(M(1,I)) ));%Display the I-th value of M (If I is greater than 100, an error occurs)
        I=I+1;              %Add 1 to I
end                         %Return to line 3