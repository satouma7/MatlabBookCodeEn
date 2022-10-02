Z=zeros(100,100);
    for X=50:100                        %Increment X from 50 to 100 (right half)
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V)+pi/2;       %Add pi/2 to atan(W/V) to have Theta
            if (R>30)&&(R<50)
                Z(Y,X)=Theta*100/2/pi;
            end
        end
    end
    for X=1:49                          %Increment X from 1 to 49 (left half)
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V)+3*pi/2;     %Add 3pi/2 to atan(W/V) to have Theta
            if (R>30)&&(R<50)
                Z(Y,X)=Theta*100/2/pi;
            end
        end
    end
imagesc(Z,[0 100]);set(gca,'YDir','normal');colorbar;