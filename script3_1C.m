Tmax=5000;dt=0.01;Tmax2=Tmax*dt;    %Calculate the end time, Tmax2
p=1;k=0.1;
T=1:Tmax2;
E=zeros(1,Tmax2);
E=(1-exp(-k*(T-1)))*p/k;
plot(1:Tmax2,E);
