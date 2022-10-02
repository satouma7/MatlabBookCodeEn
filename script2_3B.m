S1=0; S2=0;         %Assign 0 to S1 and S2
for I=1:100         %Increment I from 1 to 100
    S1=S1+I;        %Add I to S1 and substitute S1 again
    S2=S2+I^2;      %Add the square of I to S2 and substitute S2 again
end                 %Return to the second line
S1                  %Display the contents of S1
S2                  %Display the contents of S1
