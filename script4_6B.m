Xmax=100;Tmax=500;
B=zeros(Xmax,Xmax,Tmax);W=B;D=B;R=zeros(Xmax,Xmax);
dt=0.1;d=1;k=0.1;a=1;
cb=zeros(Xmax,Xmax);cb(51:100,41:60)=0.5;
cw=zeros(Xmax,Xmax);cw(1:50,41:60)=0.5;
clone=ones(5,5);    %Or, clone=[0 1 1 1 0; 1 1 1 1 1; 1 1 1 1 1; 1 1 1 1 1; 0 1 1 1 0];
R(31:35,3:7)=clone;R(31:35,23:27)=clone;    %Specify the distribution of activated receptor R
R(31:35,43:47)=clone;R(31:35,63:67)=clone;  %Specify the distribution of activated receptor R
for T=1:Tmax
    B(:,:,T+1)=dt*(4*d*del2(B(:,:,T))-k*B(:,:,T)+cb)+B(:,:,T);
    W(:,:,T+1)=dt*(4*d*del2(W(:,:,T))-k*W(:,:,T)+cw)+W(:,:,T);
    D(:,:,T+1)=dt*(a*(B(:,:,T)+R).*W(:,:,T)-k*D(:,:,T))+D(:,:,T);%Calculate the production and degradation of D
end
figure('Position',[0 400 1000 250]);%Adjust the position and size of the window
for T=1:20:Tmax
    subplot(1,3,1);imagesc(B(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    subplot(1,3,2);imagesc(W(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    subplot(1,3,3);imagesc(D(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    pause(0.001);
end