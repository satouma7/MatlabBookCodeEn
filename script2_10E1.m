Z=zeros(100,100);   
for X=1:10              %Increment X from 1 to 10
    for Y=1:100         %Increment Y from 1 to 100
        Z(Y,X)=10*X-Y;  %Assign the value of 10*X-Y to row Y column X of Z
    end                 %Return to line 3
end                     %Return to line 2
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;