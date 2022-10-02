Xmax=100;Tmax=500;
B=zeros(Xmax,Xmax,Tmax);S=zeros(Xmax,Xmax,Tmax);
dt=0.1;dx=1;dx2=dx*dx;d=1;k=0.1;a=1;
c=zeros(100,100);c(:,48:53)=0.5;
Btemp=B(:,:,1);Bright=Btemp;Bleft=Btemp;Bup=Btemp;Bdown=Btemp;%Line 5 can be omitted
for T=1:Tmax-1
    Btemp=B(:,:,T); %Fast calculation of the diffusion of B using matrices, line 7-12
    Bright(:,Xmax)=Btemp(:,Xmax);Bright(:,1:Xmax-1)=Btemp(:,2:Xmax);
    Bleft(:,1)=Btemp(:,1);Bleft(:,2:Xmax)=Btemp(:,1:Xmax-1);
    Bup(Xmax,:)=Btemp(Xmax,:);Bup(1:Xmax-1,:)=Btemp(2:Xmax,:);
    Bdown(1,:)=Btemp(1,:);Bdown(2:Xmax,:)=Btemp(1:Xmax-1,:);
    B(:,:,T+1)=dt*(d/dx2*(Bright+Bleft+Bup+Bdown-4*Btemp)-k*Btemp+c)+Btemp;
    S(:,:,T+1)=dt*(a*Btemp-k*S(:,:,T))+S(:,:,T);
end
figure('Position',[0 300 1000 400]);%Adjust the position and size of the window
for T=1:Tmax                        %Or, for T=1:20:Tmax
    subplot(1,2,1);imagesc(B(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    subplot(1,2,2);imagesc(S(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    pause(0.0001);
end