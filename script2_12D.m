Z=zeros(100,100,100);
for T=1:100
    for X=50:100
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V)+2*pi/100*T+pi/2;    %Calculate Theta 
            if Theta>2*pi                       %If Theta is greater than 2ƒÎ, 
                Theta=Theta-2*pi;               %   subtract 2ƒÎ from Theta
            end                                 %The if statement in line 8 ends here
            if (R>30)&&(R<50)
                Z(Y,X,T)=Theta*100/2/pi;
            end
        end
    end
    for X=1:49
        for Y=1:100
            V=X-50;W=Y-50;
            R=sqrt(V*V+W*W);
            Theta=atan(W/V)+2*pi/100*T+3*pi/2;  %Calculate Theta   
            if Theta>2*pi                       %If Theta is greater than 2ƒÎ, 
                Theta=Theta-2*pi;               %  subtract 2ƒÎ from Theta
            end                                 %The if statement in line 21 ends here
            if (R>30)&&(R<50)
                Z(Y,X,T)=Theta*100/2/pi;
            end
        end
    end
end
mov=VideoWriter('kadai2_12D', 'MPEG-4');        %Prepare mov for saving video
open(mov);                                      %Open a file for saving video
for T=1:100
    imagesc(Z(:,:,T),[0 100]);set(gca,'YDir','normal');colorbar;
    writeVideo(mov, getframe(gcf));             %Write a video frame
    pause(0.001);
end
close(mov);                                     %Close the video file