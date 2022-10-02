global a b c d  %Declare a, b, c, and d as global variables
dt=0.01;Tmax1=10000;Tmax2=Tmax1*dt;
X=zeros(1,Tmax1);X(1)=30;
Y=zeros(1,Tmax1);Y(1)=10;
a=1;b=0.2;c=0.1;d=1;
[T,L]=ode45('script3_5eq', [1 Tmax2],[X(1);Y(1)]);  %Obtain numerical solutions of Åescript3_5eqÅf using ode45
figure('Position',[0 300 1000 400]);                %Adjust the size and position of the window accordingly
subplot(1,2,1);plot(T,L(:,1),'g',T,L(:,2),'r');ylim([0 40]);legend('X','Y');%Plot the time variation of X (L(:,1)) and Y (L(:,2))
subplot(1,2,2);plot(L(:,1),L(:,2),'k');xlim([0 40]);ylim([0 20]);           %Plot X (L(:,1)) and Y (L(:,2)) along horizontal and vertical axes