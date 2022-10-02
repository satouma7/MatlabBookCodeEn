Z=zeros(100,100);
for X=1:100
    for Y=1:100
        if X>=Y         %If X>=Y then
            Z(Y,X)=1;   %  assign 1 to row Y and column X of Z
        end             %The if statement in line 4 ends here
    end
end
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;