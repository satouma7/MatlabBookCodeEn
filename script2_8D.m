M=ceil(rand(2,10)*3);           %Assign random integers from 1 to 3 to a 2-by-10 matrix M
Team1=0; Team2=0; Draws=0;      %Team1, Team2 and Draws are the numbers of Team 1 wins, Team 2 wins and draws
for J=1:10                      %Increment J from 1 to 10 (J-th player)
    for I=1:2                   %Increment I from 1 to 2 (Team I)
        switch M(I,J)           %Classify cases according to the value of M(I,J)
            case 1              %If M(I,J) is 1, then
                RPS='Rock';     %  assign 'Rock' to RPS
            case 2              %If M(I,J) is 2, then
                RPS='Paper';    %  assign 'Paper' to RPS
            case 3              %If M(I,J) is 3, then
                RPS='Scissors'; %  assign 'Scissors' to RPS
        end                     %The switch statement from line 5 ends here
        disp(strcat(num2str(J), 'th player of Team ',num2str(I), ' is ', RPS));%Display the hand of J-th player from Team I
    end                         %Return to line 4
    switch M(1,J)               %Classify cases according to the value of M(1,J)
        case 1                      %If the J-th player of Team 1 is ÅeRockÅf
            if M(2,J)==2            %If the J-th player of Team 2 is 'Paper'
                Result='Team 2 wins';Team2=Team2+1;%Team2 wins and adds 1 to Team2
            elseif M(2,J)==3        %If not, but if the J-th player of Team 2 is 'Scissors'
                Result='Team 1 wins';Team1=Team1+1;%Team1 wins, and add 1 to Team1
            else                    %If not (if the J-th player of Team 2 is ÅeRockÅf)
                Result='Draw';Draws=Draws+1;%Draw game and add 1 to Draws
            end                     %The if statement from line 17 ends here
        case 2                      %If the J-th player of Team 1 is 'Paper'
            if M(2,J)==1            %If the J-th player of Team 2 is ÅeRockÅf
                Result='Team 1 wins';Team1=Team1+1;%Team1 wins, and add 1 to Team1
            elseif M(2,J)==3        %If not, but if the J-th player of Team 1 is 'Scissors'
                Result='Team 2 wins';Team2=Team2+1;%Team2 wins and adds 1 to Team2
            else                    %If not (if the J-th player of Team 2 is 'Paper')
                Result='Draw';Draws=Draws+1;%Draw game and add 1 to Draws
            end                     %The if statement from line 25 ends here
        case 3                      %If the J-th player of Team 1 is 'Scissors'
            if M(2,J)==1            %If the J-th player of Team 2 is ÅeRockÅf
                Result='Team 2 wins';Team2=Team2+1;%Team2 wins, and add 1 to Team2
            elseif M(2,J)==2        %If not, but if the Jth player of Team2 is 'Paper'
                Result='Team 1 wins';Team1=Team1+1;%Team1 wins and adds 1 to Team1
            else                    %If not (if the J-th player of Team 2 is 'Scissors')
                Result='Draw';Draws=Draws+1;%Draw game and add 1 to Draws
            end                     %The if statement from line 33 ends here  
    end                             %The switch statement from line 15 ends here
    disp(strcat(Result, ' in the ', num2str(J), '-th game'));%Display the result of the J-th game
end                                 %Return to line 3 and increase J
disp(strcat('Team1 has ',num2str(Team1),' wins, ',num2str(Team2),' losses, and ', num2str(Draws),' draws'));%Display the number of wins, losses and draws of Team 1
disp(strcat('Team2 has ',num2str(Team2),' wins, ',num2str(Team1),' losses, and ', num2str(Draws),' draws'));%Display the number of wins, losses and draws of Team 2
