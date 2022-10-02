Y=zeros(100,100);   %Assign 0 to a 100-by-100 matrix Y 
X=1:100;            %Assign a sequence of numbers from 1 to 100 to vector X
for T=1:100         %Calculate the value of Y by increasing T from 1 to 100
    Y(:,T)=sin(4*pi/100*X+2*pi/100*T);%Compute the value of vector Y(:,T) at time T
end                 %Return to line 3
for T=1:100         %Display animation by incrementing T from 1 to 100
    plot(X,Y(:,T)); %plot X as horizontal axis and Y as vertical axis at time T
    pause(0.1);     %Wait 0.1 seconds
end                 %Return to line 6