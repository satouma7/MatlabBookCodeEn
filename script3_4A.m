dt=0.01;Tmax=10000;
S=zeros(1,Tmax);S(1)=99;    %Susceptible
I=zeros(1,Tmax);I(1)=1;     %Infected
R=zeros(1,Tmax);R(1)=0;     %Recovered
b=0.01;g=0.1;               %Or, b=0.001;g=0.01;
for T=1:Tmax-1
    S(T+1)=S(T)+dt*( -b*S(T)*I(T)           );
    I(T+1)=I(T)+dt*(  b*S(T)*I(T) -g*I(T)   );
    R(T+1)=R(T)+dt*(               g*I(T)   );
end
X=1:Tmax;
plot(X,S,'g',X,I,'r',X,R,'b');legend('S','I','R');
title(strcat('b=',num2str(b),' /g=',num2str(g),' /Total infected=',num2str(S(1)-S(Tmax)) ));