dt=0.01;Tmax=30000;
L=zeros(1,Tmax);L(1)=1;     %LT-HSC (initial value 1)
S=zeros(1,Tmax);S(1)=0;     %ST-HSC (initial value 0)
M=zeros(1,Tmax);M(1)=0;     %MPP (initial value 0)
Cl=zeros(1,Tmax);Cl(1)=0;   %Lymphocyte common progenitor cell (initial value 0)
Cm=zeros(1,Tmax);Cm(1)=0;   %Myeloid common progenitor cell (initial value 0)
p1=0.009;p2=0.042;p3=4;
d1=0.009;d2=0.045;d3=0.022;d4=3.992;d5=0.00;d6=0.5;
for T=1:Tmax-1
    L(T+1)=L(T)+dt*(p1-d1)*L(T);
    S(T+1)=S(T)+dt*(d1*L(T)+(p2-d2)*S(T));
    M(T+1)=M(T)+dt*(d2*S(T)+(p3-d3-d4)*M(T));
    Cl(T+1)=Cl(T)+dt*(d3*M(T)-d5*Cl(T));
    Cm(T+1)=Cm(T)+dt*(d4*M(T)-d6*Cm(T));
end
X=1:Tmax;figure('Position',[0 300 1000 400]);
subplot(1,2,1);plot(X, L, 'k', X, S, 'g', X, M, 'm');legend('L','S');
subplot(1,2,2);plot(X, L, 'k', X, Cl, 'b', X, Cm, 'r');legend('L','Cl','Cm');