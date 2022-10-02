M=ceil(rand(2,10)*3);               %Assign random integers from 1 to 3 to a 2-by-10 matrix M
for J=1:10                          %Increment J from 1 to 10 (J-th player)
    for I=1:2                       %Increment I from 1 to 2 (Team I)
        switch M(I,J)               %Classify cases according to the value of M(I,J)
            case 1                  %If M(I,J) is 1, then
                RPS='Rock';         %  assign 'Rock' to RPS
            case 2                  %If M(I,J) is 2, then
                RPS='Paper';        %  assign 'Paper' to RPS
            case 3                  %If M(I,J) is 3, then
                RPS='Scissors';     %  assign 'Scissors' to RPS
        end                         %The switch statement from line 4 ends here
        disp(strcat(num2str(J), 'th player of Team ',num2str(I), ' is ', RPS));%Display the hand of J-th player from Team I
    end                             %Return to line 3
end                                 %Return to line 2