Tmax=500;Xmax=100;
A=zeros(Xmax,Xmax,Tmax);I=zeros(Xmax,Xmax,Tmax);
A(48:52,48:52,1)=1;                          
dt=0.01;da=20;aa=6;di=0.1;ii=-2;ia=-30;ai=0.5;
Amax=2;Imax=2;              %Set the upper limits Amax and Imax
for T=1:Tmax
    A(:,:,T+1)=dt*(4*da*del2(A(:,:,T))+aa*A(:,:,T)+ia*I(:,:,T))+A(:,:,T);
    I(:,:,T+1)=dt*(4*di*del2(I(:,:,T))+ii*I(:,:,T)+ai*A(:,:,T))+I(:,:,T);
    for Y=1:100             %Incrementing Y from 1 to 100
       for X=1:100          %Incrementing X from 1 to 100
           if A(Y,X,T+1)<0  %Setting the upper and lower limits of A(Y,X,T+1), line 11-15
               A(Y,X,T+1)=0;
           elseif A(Y,X,T+1)>Amax
               A(Y,X,T+1)=Amax;
           end
           if I(Y,X,T+1)<0  %Setting the upper and lower limits of I(Y,X,T+1), line 16-20
               I(Y,X,T+1)=0;
           elseif I(Y,X,T+1)>Imax
               I(Y,X,T+1)=Imax;
           end
       end
    end
end
figure('Position',[0 300 1000 400]);%Adjust the position and size of the window
for T=1:20:Tmax
    subplot(1,2,1);imagesc(A(:,:,T),[0 2]);set(gca,'YDir','normal');colorbar;
    subplot(1,2,2);imagesc(I(:,:,T),[0 2]);set(gca,'YDir','normal');colorbar;
    pause(0.0001);
end