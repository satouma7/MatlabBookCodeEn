Z=zeros(100,100);
for X=1:10
    for Y=1:20          %Increment Y from 1 to 20
        Z(Y,X)=X-Y;     %Assign X-Y values to row Y and column X of Z
    end
end
Z=repmat(Z(1:20,1:10),5,10);%Repeat the Z contents of rows 1~20 and columns 1~10, 5 times in row direction and 10 times in column direction
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;