Z=zeros(100,100);                       %Assign 0 to a 100-by-100 matrix Z
    for Y=1:100                         %Increment X from 1 to 100
        for X=1:100                     %Increment Y from 1 to 100
            V=X-50;W=Y-50;              %Calculate V and W from X and Y 
            R=sqrt(V*V+W*W);            %Calculate the distance R (radius) from the origin
            Theta=atan(W/V);            %Calculate ƒÆ (Theta) from V and W
            if (R>30)&&(R<50)           %If R is between 30 and 50, 
                Z(Y,X)=Theta*100/2/pi;  %calculate color value from Theta and assign to Z(Y,X)
            end                         %The if statement from line 7 ends here
        end                             %Back to line 3
    end                                 %Back to line 2
imagesc(Z);set(gca,'YDir','normal');colorbar;