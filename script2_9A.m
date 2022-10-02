M=ceil(rand(2,10)*3);               %Assign random integers from 1 to 3 to a 2-by-10 matrix M
Team1=0;Team2=0;Draws=0;            %Team1, Team2 and Draws are the numbers of Team 1 wins, Team 2 wins and draws
for J=1:10                          %Increment J from 1 to 10 (J-th player)
    for I=1:2                       %Increment I from 1 to 2 (Team I)
        switch M(I,J)               %Classify cases according to the value of M(I,J)
            case 1                  %If M(I,J) is 1, then
                RPS='Rock';         %  assign 'Rock' to RPS
            case 2                  %If M(I,J) is 2, then
                RPS='Paper';        %  assign 'Paper' to RPS
            case 3                  %If M(I,J) is 3, then
                RPS='Scissors';     %  assign 'Scissors' to RPS
        end                         %The switch statement from line 5 ends here
        disp(strcat(num2str(J), 'th player of Team ',num2str(I), ' is ', RPS));%Display the hand of J-th player from Team I
    end                             %Return to line 4
    Decision=Judge(M(1,J),M(2,J));  %Assign the result of Judge between J-th player of Team 1 and Team 2 to Decision
    switch Decision                 %Classify cases according to the value of Decision
        case 1                      %If Decision is 1 (Team 1 wins)
            Result='Team1 wins';Team1=Team1+1;%Team1 wins and add 1 to Team1
        case 2                      %If Decision is 2 (Team 2 wins)
            Result='Team2 wins';Team2=Team2+1;%Team2 wins and add 1 to Team2
        case 0                      %If Decision is 0 (draw)
            Result='Draw';Draws=Draws+1;%Draw game and add 1 to Draw
    end                             %The switch statement from line 16 ends here
    disp(strcat(Result, ' in the ',num2str(J),'th game'));%Display the result of the J-th game
end                                 %Return to line 3
disp(strcat('Team1 has ',num2str(Team1),' wins, ',num2str(Team2),' losses, and ', num2str(Draws),' draws'));%Display the number of wins, losses and draws of Team 1
disp(strcat('Team2 has ',num2str(Team2),' wins, ',num2str(Team1),' losses, and ', num2str(Draws),' draws'));%Display the number of wins, losses and draws of Team 2