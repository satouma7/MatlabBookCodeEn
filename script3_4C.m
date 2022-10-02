dt=0.01;Tmax=10000;
S=zeros(1,Tmax);S(1)=99;    %Susceptible
I=zeros(1,Tmax);I(1)=1;     %Infected
R=zeros(1,Tmax);R(1)=0;     %Recovered
X=1:Tmax;
b=[0.01 0.005 0.002 0.001];g=0.1;   %Assign infection rates to a four element vector b
figure('Position',[0 400 1400 300]);%Adjust the size and position of the window accordingly
for J=1:4                           %Increment J from 1 to 4 and use different elements of b(J)
    for T=1:Tmax-1
        S(T+1)=S(T)+dt*( -b(J)*S(T)*I(T)           );
        I(T+1)=I(T)+dt*(  b(J)*S(T)*I(T) -g*I(T)   );
        R(T+1)=R(T)+dt*(                  g*I(T)   );
    end
    subplot(1,4,J);plot(X,S,'g',X,I,'r',X,R,'b');legend('S','I','R');
    title(strcat('b=',num2str(b(J)),' /g=',num2str(g),' /Total infected=',num2str(S(1)-S(Tmax)) ));
end                                 %Return to line 8