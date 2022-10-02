Tmax=5000;dt=0.01;
p=1;k=0.1;
E=zeros(1,Tmax);
for T=1:Tmax-1                      %Increment T from 1 to Tmax-1
    E(1,T+1)=(p-k*E(1,T))*dt+E(1,T);%Calculate E according to the Euler method. Or, E(T+1)=(p-k*E(T))*dt+E(T); 
end
plot(1:Tmax,E(1,:));                %Or, plot(1:Tmax, E); 