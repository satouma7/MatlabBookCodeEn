dt=0.01;Tmax=10000;N=500;
I=zeros(1,Tmax);I(1)=N/100;     %Initial value of I
S=zeros(1,Tmax);S(1)=N-I(1);    %Initial value of S
R=zeros(1,Tmax);R(1)=0;         %Initial value of R
X=1:Tmax;R0=2;
b=[0.0001 0.001 0.01 0.1];
figure('Position',[0 400 1400 300]);    %Prepare the values of b as a four element vector
for J=1:4                               %Adjust the size and position of the window accordingly
    g=b(J)/R0;                          %Increment J from 1 to 4
    for T=1:Tmax-1                      %Calculate the value of g from b(J) and R0
        S(T+1)=S(T)+dt*( -b(J)*S(T)*I(T)           );
        I(T+1)=I(T)+dt*(  b(J)*S(T)*I(T) -g*I(T)   );
        R(T+1)=R(T)+dt*(                  g*I(T)   );
    end
    subplot(1,4,J);plot(X,S,'g',X,I,'r',X,R,'b','LineWidth',2);legend('S','I','R');
    title(strcat('b=',num2str(b(J)),' /g=',num2str(g),' /Total infected=',num2str(S(1)-S(Tmax)) ));
end                                     %Return to line 8