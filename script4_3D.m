Xmax=100;Tmax=100;
dt=0.1;d=1;dx=1;dx2=dx*dx;
E=zeros(Xmax,Xmax,Tmax);
E(41:60,41:60,1)=1;         %Or, E(1:20, 41:60, 1)=rand(20);
Etemp=zeros(Xmax,Xmax);Eright=zeros(Xmax,Xmax);Eleft=zeros(Xmax,Xmax);Eup=zeros(Xmax,Xmax);Edown=zeros(Xmax,Xmax);%Prepare the matrices Etemp, Eright,Eleft, Eup, Edown
tic;
for T=1:Tmax
    Etemp=E(:,:,T);         %Calculation of the diffusion of E using the matirices, line 8-13
    Eright(:,100)=Etemp(:,100);Eright(:,1:99)=Etemp(:,2:100);
    Eleft(:,1)=Etemp(:,1);Eleft(:,2:100)=Etemp(:,1:99);
    Eup(100,:)=Etemp(100,:);Eup(1:99,:)=Etemp(2:100,:);
    Edown(1,:)=Etemp(1,:);Edown(2:100,:)=Etemp(1:99,:);
    E(:,:,T+1)=dt*(d*(Eright+Eleft+Eup+Edown-4*Etemp)/dx2)+Etemp;
end
toc;
for T=1:Tmax
    imagesc(E(:,:,T),[0 1]);set(gca,'YDir','normal');colorbar;
    pause(0.001);
end