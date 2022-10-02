M=ceil(rand(2,10)*3);       %Assign random integers from 1 to 3 to the 2-by-10 matrix M
for J=1:10                  %Increment J from 1 to 10 (J-th player)
    for I=1:2               %Increment I from 1 to 2 (Team I)
        if M(I,J)==1        %If M(I,J) is 1, then
            RPS='Rock';     %  assign 'Rock' to RPS
        elseif M(I,J)==2    %If not, but if M(I,J) is 2, then
            RPS='Paper';    %  assign 'Paper' to RPS
        else                %If not, 
            RPS='Scissors'; %  assign 'Scissors' to RPS
        end                 %The if statement from line 4 ends here
        disp(strcat(num2str(J), '-th player of Team ',num2str(I), ' is ', RPS));%Display the hand of J-th player from Team I
    end                     %Return to line 3
end                         %Return to line 2