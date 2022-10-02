dt=0.01;Tmax=10000;
S=zeros(1,Tmax);S(1)=99;    %Susceptible
I=zeros(1,Tmax);I(1)=1;     %Infected
R=zeros(1,Tmax);R(1)=0;     %Recovered
X=1:Tmax;
b=0.01;g=[0.1 0.2 0.5 1.0];         %Assign recovery rates to a four element vector g
figure('Position',[0 400 1400 300]);%Adjust the size and position of the window accordingly
for J=1:4                           %Increment J from 1 to 4 and use different elements of g(J)
    for T=1:Tmax-1
        S(T+1)=S(T)+dt*( -b*S(T)*I(T)           );
        I(T+1)=I(T)+dt*(  b*S(T)*I(T) -g(J)*I(T)   );
        R(T+1)=R(T)+dt*(               g(J)*I(T)   );
    end
    subplot(1,4,J);plot(X,S,'g',X,I,'r',X,R,'b');legend('S','I','R');%Plot in the J-th tile of the tiles with one vertical row and four horizontal columns
    title(strcat('b=',num2str(b),' /g=',num2str(g(J)),' /Total infected=',num2str(S(1)-S(Tmax)) ));
end                                 %Return to line 8