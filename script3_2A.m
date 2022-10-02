dt=0.01;Tmax=30000;
L=zeros(1,Tmax);L(1)=1;     %LT-HSC (initial value 1)
S=zeros(1,Tmax);S(1)=0;     %ST-HSC (initial value 0)
M=zeros(1,Tmax);M(1)=0;     %MPP (initial value 0)
p1=0.009;p2=0.042;p3=4;
d1=0.009;d2=0.045;d3=4.014;
for T=1:Tmax-1
    L(T+1)=L(T)+dt*(p1-d1)*L(T);
    S(T+1)=S(T)+dt*(d1*L(T)+(p2-d2)*S(T));
    M(T+1)=M(T)+dt*(d2*S(T)+(p3-d3)*M(T));
end
X=1:Tmax;
plot(X,L,'k',X,S,'g',X,M,'m');%Plot L, S, M with black, green and magenta lines