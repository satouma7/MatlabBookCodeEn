Tmax=200;Xmax=25;
dt=0.1;dx=1;dx2=dx*dx;  %Setting the values of dt, dx, dx2
de=1;ke=1;ae=1;ea=10;
E=zeros(Xmax,Xmax,Tmax);
A=zeros(Xmax,Xmax,Tmax);A(:,1,1)=0.5;%Setting the initial pattern of differentiation, A
Etemp=zeros(Xmax,Xmax);Eright=Etemp;Eleft=Etemp;Eup=Etemp;Edown=Etemp;
for T=1:Tmax-1
    Etemp=E(:,:,T);     %Calculating the reaction diffusion of E
    Eright(:,Xmax)=Etemp(:,Xmax);Eright(:,1:Xmax-1)=Etemp(:,2:Xmax);
    Eleft(:,1)=Etemp(:,1);Eleft(:,2:Xmax)=Etemp(:,1:Xmax-1);
    Eup(Xmax,:)=Etemp(Xmax,:);Eup(1:Xmax-1,:)=Etemp(2:Xmax,:);
    Edown(1,:)=Etemp(1,:);Edown(2:Xmax,:)=Etemp(1:Xmax-1,:);
    E(:,:,T+1)=dt*(de*(Eright+Eleft+Eup+Edown-4*Etemp)/dx2-ke*E(:,:,T)+ae*A(:,:,T).*(1-A(:,:,T)))+E(:,:,T);
    A(:,:,T+1)=dt*(ea*(1-A(:,:,T)).*E(:,:,T))+A(:,:,T);%Calculating the time difference of A
end
figure('Position',[0 400 1000 250]);%Adjust the position and size of the window
for T=1:10:100          %Adjust the range of T for animation
    subplot(1,2,1);imagesc(E(:,:,T),[0 0.5]);set(gca,'YDir','normal');title('EGF');colorbar;
    subplot(1,2,2);imagesc(A(:,:,T),[0 1]);set(gca,'YDir','normal');title('AS-C');colorbar;
    pause(0.001);
end