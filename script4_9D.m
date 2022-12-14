Tmax=200;Xmax=25;
dt=0.1;dx=1;dx2=dx*dx;
de=1;ke=1;ae=1;ea=10;kn=1;dn=0.25;dc=0.25;kd=1;ad=1;
E=zeros(Xmax,Xmax,Tmax);En=zeros(Xmax,Xmax);
N=zeros(Xmax,Xmax,Tmax);D=zeros(Xmax,Xmax,Tmax);Nmutant=ones(Xmax,Xmax);Nmutant(6:20,6:20)=0;%Definition of the Notch mutant region, Nmutant
A=zeros(Xmax,Xmax,Tmax);A(:,1,1)=0.5;
Etemp=zeros(Xmax,Xmax);Eright=Etemp;Eleft=Etemp;Eup=Etemp;Edown=Etemp;
for T=1:Tmax-1
    Etemp=E(:,:,T);
    Eright(:,Xmax)=Etemp(:,Xmax);Eright(:,1:Xmax-1)=Etemp(:,2:Xmax);
    Eleft(:,1)=Etemp(:,1);Eleft(:,2:Xmax)=Etemp(:,1:Xmax-1);
    Eup(Xmax,:)=Etemp(Xmax,:);Eup(1:Xmax-1,:)=Etemp(2:Xmax,:);
    Edown(1,:)=Etemp(1,:);Edown(2:Xmax,:)=Etemp(1:Xmax-1,:);
    E(:,:,T+1)=dt*(de*(Eright+Eleft+Eup+Edown-4*Etemp)/dx2-ke*E(:,:,T)+ae*A(:,:,T).*(1-A(:,:,T)))+E(:,:,T);   
    for X=2: Xmax-1
        for Y=2:Xmax-1
            N(Y,X,T+1)= N(Y,X,T) + dt*(( dn*( D(Y,X+1,T)+D(Y,X-1,T)+D(Y+1,X,T)+D(Y-1,X,T)) -dc*D(Y,X,T))*Nmutant(Y,X) -kn*N(Y,X,T) );%Calculating the lateral inhibition of N in the presence of Notch mutant region                     
        end
    end
    for X=2: Xmax-1        
        N(1,X,T+1)= N(1,X,T) + dt*( dn*( D(1,X+1,T)+D(1,X-1,T)+D(2,X,T)) -dc*D(1,X,T) -kn*N(1,X,T));  
        N(Xmax,X,T+1)= N(Xmax,X,T) + dt*( dn*( D(Xmax,X+1,T)+D(Xmax,X-1,T)+D(Xmax-1,X,T)) -dc*D(Xmax,X,T) -kn*N(Xmax,X,T) );         
    end
    for Y=2: Xmax-1        
        N(Y,1,T+1)= N(Y,1,T) + dt*( dn*( D(Y+1,1,T)+D(Y-1,1,T)+D(Y,2,T)) -dc*D(Y,1,T) -kn*N(Y,1,T) );  
        N(Y,Xmax,T+1)= N(Y,Xmax,T) + dt*( dn*( D(Y+1,Xmax,T)+D(Y-1,Xmax,T)+D(Y,Xmax-1,T)) -dc*D(Y,Xmax,T) -kn*N(Y,Xmax,T) );         
    end       
    N(1,1,T+1)= N(1,1,T) + dt*( dn*( D(1,2,T)+D(2,1,T)) -dc*D(1,1,T) -kn*N(1,1,T));  
    N(Xmax,1,T+1)= N(Xmax,1,T) + dt*( dn*( D(Xmax,2,T)+D(Xmax-1,1,T)) -dc*D(Xmax,1,T) -kn*N(Xmax,1,T) );         
    N(1,Xmax,T+1)= N(1,Xmax,T) + dt*( dn*( D(2,Xmax,T)+D(1,Xmax-1,T)) -dc*D(1,Xmax,T) -kn*N(1,Xmax,T) );
    N(Xmax,Xmax,T+1)= N(Xmax,Xmax,T) + dt*( dn*( D(Xmax,Xmax-1,T)+D(Xmax-1,Xmax,T)) -dc*D(Xmax,Xmax,T) -kn*N(Xmax,Xmax,T) );       
    D(:,:,T+1)=dt*(-kd*D(:,:,T)+ad*A(:,:,T).*(1-A(:,:,T)))+D(:,:,T);
    En=E(:,:,T)-N(:,:,T);En=En.*(En>0);
    A(:,:,T+1)=dt*(ea*(1-A(:,:,T)).*En)+A(:,:,T);
end
figure('Position',[0 100 1000 600]);
for T=1:10:100
    subplot(2,2,1);imagesc(E(:,:,T),[0 0.5]);set(gca,'YDir','normal');title('EGF');colorbar;
    subplot(2,2,2);imagesc(A(:,:,T),[0 1]);set(gca,'YDir','normal');title('AS-C');colorbar;
    subplot(2,2,3);imagesc(D(:,:,T),[0 0.5]);set(gca,'YDir','normal');title('Delta');colorbar;
    subplot(2,2,4);imagesc(N(:,:,T),[0 0.2]);set(gca,'YDir','normal');title('Notch');colorbar;
    pause(0.001);
end