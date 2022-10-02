Z=zeros(100,100);           
for X=1:50                  %Increment X from 1 to 50 (upper left area)
    for Y=1:50              %Increment Y from 1 to 50
        Z(Y,X)=X+Y;         %assign the value of X+Y to row Y column X of Z
    end                     %Return to line 3
end                         %Return to line 2
for X=51:100                %Increment X from 51 to 100 (upper right area)
    for Y=1:50              %Increment Y from 1 to 50
        Z(Y,X)=Y-X+101;     %assign the value Y-X+101 to row Y column X of Z
    end                     %Return to line 8
end                         %Return to line 7
for X=1:50                  %Increment X from 1 to 50 (lower left area)
    for Y=51:100            %Increment Y from 51 to 100
        Z(Y,X)=X-Y+101;     %assign the value X-Y+101 to row Y column X of Z
    end                     %Return to line 13
end                         %Return to line 12
for X=51:100                %Increment X from 51 to 100 (lower right area)
    for Y=51:100            %Increment Y from 51 to 100
        Z(Y,X)=202-(X+Y);   %Assign the value 202-(X+Y) to row Y column X of Z
    end                     %Return to line 18
end                         %Return to line 17
imagesc(Z);set(gca,'YDir','normal');colorbar;