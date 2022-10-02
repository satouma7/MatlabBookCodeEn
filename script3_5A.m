dt=0.01;Tmax1=10000;        %Or, dt=0.002;Tmax1=50000;
X=zeros(1,Tmax1);X(1)=30;   %Number of prey, X
Y=zeros(1,Tmax1);Y(1)=10;   %Number of predator, Y
a=1;b=0.2;c=0.1;d=1;
for T=1:Tmax1-1
    X(T+1)=X(T)+dt*( a*X(T)         -b*X(T)*Y(T) );
    Y(T+1)=Y(T)+dt*( c*X(T)*Y(T)    -d*Y(T)      );
end
figure('Position',[0 300 1000 400]);%Adjust the size and position of the window accordingly
subplot(1,2,1);plot(1:Tmax1,X,'g',1:Tmax1,Y,'r');legend('X','Y');%Plot the time variation of X and Y
subplot(1,2,2);plot(X,Y,'k');%Plot X and Y along horizontal and vertical axes