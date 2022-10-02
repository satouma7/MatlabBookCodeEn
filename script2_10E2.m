Z=zeros(100,100);
for X=1:10
    for Y=1:100
        Z(Y,X)=10*X-Y;
    end
end
Z=repmat(Z(1:100,1:10),1,10);%Assign to Z the Z contents of columns 1 through 10, repeated 10 times in the column direction
figure;imagesc(Z);set(gca,'YDir','normal');colorbar;