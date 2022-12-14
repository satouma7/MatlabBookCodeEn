Tmax=10000;Xmax=100;
dt=0.02;dx=1;dx2=dx*dx;
V=zeros(Xmax,Xmax,Tmax);W=zeros(Xmax,Xmax,Tmax);
I=zeros(Xmax,Xmax);I(50:51,50:51)=1;
a=0.7;b=0.8;c=10;d=ones(100,100);d(41:50,41:80)=0;%Setting the spatial distribution of d 
for T=1:Tmax-1
        V(:,:,T+1)=V(:,:,T)+dt*(  c*( - (V(:,:,T).^3)/3+ V(:,:,T) -W(:,:,T) + I ) + 4*d.*del2(V(:,:,T)) );%Hadamard product is used since d is a 2D matrix
        W(:,:,T+1)=W(:,:,T)+dt*(V(:,:,T)-b*W(:,:,T)+a)/c;
end
figure('Position',[0 300 1000 400]);
for T=1:100:Tmax  
    subplot(1,2,1);imagesc(V(:,:,T),[-2 2]);set(gca,'YDir','normal');colorbar;
    subplot(1,2,2);imagesc(W(:,:,T),[-1 1]);set(gca,'YDir','normal');colorbar;
    pause(0.0001);
end