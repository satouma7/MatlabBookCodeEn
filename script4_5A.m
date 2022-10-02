Xmax=100;Tmax=500;
B=zeros(Xmax,Xmax,Tmax);
dt=0.1;d=1;k=0.1;                   %Or, d=10;
c=zeros(Xmax,Xmax);c(:,48:53)=0.5;  %Spatial pattern of c, the production rate of B
for T=1:Tmax-1                      %Reaction diffusion calculation using del2
    B(:,:,T+1)=dt*(4*d*del2(B(:,:,T))-k*B(:,:,T)+c)+B(:,:,T);
end
for T=1:Tmax                        %Or, for T=1:20:Tmax
    imagesc(B(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    pause(0.0001);
end