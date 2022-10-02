T=0:1/100:10*pi; 
R=5.5-rand(1,3142);         %Or, R=5.5-rand(1,size(T,2));   Assign a random number sequence in the range 4.5 to 5.5 to R
X=R.*cos(T); Y=R.*sin(T);   %Assign RcosT to X and RsinT to Y
figure; plot(X,Y);
figure; plot3(X,Y,T);