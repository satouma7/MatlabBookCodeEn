function [ R ] = Judge( A,B )   %Define Judge function that receives A and B and outputs R
    switch A                    %Classify cases according to the value of A
        case 1                  %If player A is �eRock�f
            if B==2             %If player B is �ePaper�f
                R=2;            %  assign 2 to R (B wins)
            elseif B==3         %If not, but if player B is �eScissors�f
                R=1;            %  assign 1 to R (A wins)
            else                %If not (if player B is �eRock�f)
                R=0;            %  assign 0 to R (draw)
            end                 %The if statement from line 4 ends here
        case 2                  %If player A is �ePaper�f
            if B==1             %If player B is �eRock�f
                R=2;            %  assign 2 to R (B wins)
            elseif B==3         %If not, but if player B is �eScissors�f
                R=1;            %  assign 1 to R (A wins)
            else                %If not (if player B is �ePaper�f)
                R=0;            %  assign 0 to R (draw)
            end                 %The if statement from line 12 ends here
        case 3                  %If player A is �eScissors�f
            if B==1             %If player B is �eRock�f
                R=2;            %  assign 2 to R (B wins)
            elseif B==2         %If not, but if player B is �ePaper�f
                R=1;            %  assign 1 to R (A wins)
            else                %If not (if player B is �eScissors�f)
                R=0;            %  assign 0 to R (draw)
            end                 %The if statement from line 20 ends here
    end                         %The switch statement from line 2 ends here
end                             %The Judge function from line 1 ends here