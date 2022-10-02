Z=zeros(100,100,100);   %Assign 0 to a 100-by-100-by-100 3D matrix Z 
for T=1:100             %Calculate the value of Z by incrementing T from 1 to 100
    for X=1:100         %Increment X from 1 to 100
        for Y=1:100     %Increment Y from 1 to 100
            Z(Y,X,T)=sin(pi/100*X+2*pi/100*T)+2*cos(2*pi/100*Y+3*pi/100*T);%Calculate the value of Z(Y,X,T) at time T
        end             %Return to line 4
    end                 %Return to line 3
end                     %Return to line 2
for T=1:100             %Display animation by incrementing T from 1 to 100
    imagesc(Z(:,:,T));set(gca,'YDir','normal');colorbar;%Display the contents of the 2D matrix Z(:,:,T) at time T
    pause(0.01);        %Wait 0.01 seconds
end                     %Return to line 9