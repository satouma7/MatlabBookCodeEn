M=round(rand(1,10)*10);     %Assign random integers from 0 to 10 to a vector M with 10 elements
I=1;                        %Assign 1 to I
while (I<11)&&(M(1,I)<10)   %Execute the loop if I is less than 11 and the I-th element of M is less than 10
        disp(strcat(num2str(I),'-th value is ',num2str(M(1,I)) ));%Display the I-th value of M (If I is greater than 100, an error occurs)
        I=I+1;              %Add 1 to I
end                         %Return to line 3