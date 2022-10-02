T=0:1/100:2*pi;         %Assign a sequence of numbers in the range 0 to 2pi with tick size 0.01 to T
R=5;                    %Assign 5 to R
X=R*cos(T); Y=R*sin(T); %Assign RcosT to X and RsinT to Y
plot(X,Y);              %Plot X as the x-axis and Y as the y-axis