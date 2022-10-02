Z=zeros(100,100);       %Assign 0 to a 100-by-100 matrix Z
for X=1:100             %Increment X from 1 to 100
    for Y=1:100         %Increment Y from 1 to 100
        Z(Y,X)=X-Y;     %Assign the value X-Y to row Y and column X of Z
    end                 %Return to line 3
end                     %Return to line 2
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;%Display Z contents in 2D in a new window