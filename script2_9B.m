M=ceil(rand(2,10)*3);
Team1=0;Team2=0;Draws=0;
for J=1:10
    for I=1:2
        switch M(I,J)
            case 1
                RPS='Rock';
            case 2
                RPS='Paper';
            case 3
                RPS='Scissors';
        end
        disp(strcat(num2str(J), 'th player of Team ',num2str(I), ' is ', RPS));
    end
    Decision=Judge2(M(1,J),M(2,J));
    switch Decision
        case 1
            Result='Team1 wins';Team1=Team1+1;
        case 2
            Result='Team2 wins';Team2=Team2+1;
        case 0
            Result='Draw';Draws=Draws+1;
    end
    disp(strcat(Result, ' in the ',num2str(J),'th game'));
end
disp(strcat('Team1 has ',num2str(Team1),' wins, ',num2str(Team2),' losses, and ', num2str(Draws),' draws'));
disp(strcat('Team2 has ',num2str(Team2),' wins, ',num2str(Team1),' losses, and ', num2str(Draws),' draws'));

function [ R ] = Judge2( A,B )  %Define Judge2 function that receives A and B and outputs R
    switch A                    %Classify cases according to the value of A
        case 1                  %If player A is ÅeRockÅf
            if B==2             %If player B is ÅePaperÅf
                R=2;            %  assign 2 to R (B wins)
            elseif B==3         %If not, but if player B is ÅeScissorsÅf
                R=1;            %  assign 1 to R (A wins)
            else                %If not (if player B is ÅeRockÅf)
                R=0;            %  assign 0 to R (draw)
            end                 %The if statement from line 32 ends here
        case 2                  %If player A is ÅePaperÅf
            if B==1             %If player B is ÅeRockÅf
                R=1;            %  assign 1 to R (A wins)
            elseif B==3         %If not, but if player B is ÅeScissorsÅf
                R=2;            %  assign 2 to R (B wins)
            else                %If not (if player B is ÅePaperÅf)
                R=0;            %  assign 0 to R (draw)
            end                 %The if statement from line 40 ends here  
        case 3                  %If player A is ÅeScissorsÅf
            if B==1             %If player B is ÅeRockÅf
                R=2;            %  assign 2 to R (B wins)
            elseif B==2         %If not, but if player B is ÅePaperÅf
                R=1;            %  assign 1 to R (A wins)
            else                %If not (if player B is ÅeScissorsÅf)
                R=0;            %  assign 0 to R (draw)
            end                 %The if statement from line 48 ends here
    end                         %The switch statement from line 30 ends here
end                             %The Judge2 function from line 29 ends here