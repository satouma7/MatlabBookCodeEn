dt=0.01;Tmax=10000;
S=zeros(1,Tmax);            %Susceptible
I=zeros(1,Tmax);            %Infected
R=zeros(1,Tmax);R(1)=0;     %Recovered
X=1:Tmax;
b=0.001;g=0.1;
N=[100 200 300 400];                %Prepare the values of N as a four element vector
figure('Position',[0 400 1400 300]);%Adjust the size and position of the window accordingly
for J=1:4                           %Increment J from 1 to 4
    I(1)=N(J)*0.01;                 %Initial number of infected people I(1)
    S(1)=N(J)-I(1);                 %Initial number of uninfected people S(1)
    for T=1:Tmax-1
        S(T+1)=S(T)+dt*( -b*S(T)*I(T)           );
        I(T+1)=I(T)+dt*(  b*S(T)*I(T) -g*I(T)   );
        R(T+1)=R(T)+dt*(               g*I(T)   );
    end
    subplot(1,4,J);plot(X,S,'g',X,I,'r',X,R,'b');ylim([0 N(J)]);legend('S','I','R');
    title(strcat('Total infected=',num2str(S(1)-S(Tmax)),' /Total infected ratio=',num2str((S(1)-S(Tmax))/N(J)) ));
end                                 %Return to line 9