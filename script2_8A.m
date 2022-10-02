M=ceil(rand*3);     %Assign a random integer between 1 and 3 to M
if M==1             %If M is 1, then
    RPS='Rock';     %  assign ÅeRockÅf to RPS
elseif M==2         %If not, but if M is 2, then
    RPS='Paper';    %  assign ÅePaperÅfto RPS
else                %Otherwise, 
    RPS='Scissors'; %  assign ÅeScissorsÅf to RPS
end                 %The if statement from line 2 ends here
disp(RPS);          %Display the contents of RPS