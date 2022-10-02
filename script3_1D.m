Tmax1=5000;dt=0.01;Tmax2=Tmax1*dt;
p=1;k=0.1;
E=zeros(1,Tmax1);               %Prepare a vector E to store the solution by Euler method
for T=1:Tmax1-1                 %Calculate E by Euler method with end time Tmax1
    E(T+1)=(p-k*E(T))*dt+E(T);
end
E1=zeros(1,Tmax2);              %Prepare a vector E1 to store the values of E thinned out in the time direction
for T=1:Tmax2                   %Calculate E1 with E thinned out in time direction with end time Tmax2
    E1(T)=E((T-1)/dt+1);        %Map E on E1 according to Fig. 3.5
end
T2=1:Tmax2;                     %Prepare a time vector T2 with the end time Tmax2
E2=zeros(1,Tmax2);              %Prepare a vector E2 to store the exact solution
E2(1,:)=(1-exp(-k*(T2-1)))*p/k; %Calculate the exact solution E2 using T2
plot(T2,E1,'ro',T2,E2,'b*');    %Plot the numerical solution E1 and the exact solution E2