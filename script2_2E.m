T=0:1/100:10*pi; 
R=-T/2/pi+5+rand(1,3142)-0.5;   %Assign a sequence of numbers decreasing from 5 to 0 while fluctuating in the range +/-0.5 to R 
X=R.*cos(T); Y=R.*sin(T);
figure;plot(X,Y);
figure;plot3(X,Y,T);
