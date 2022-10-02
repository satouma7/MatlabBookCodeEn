Z=zeros(100,100,100);
for T=1:100
    for X=1:100
        for Y=1:100
            Z(Y,X,T)=sin(pi/100*X+2*pi/100*T)+2*cos(2*pi/100*Y+3*pi/100*T);
        end
    end
end
mov=VideoWriter('kadai2_11D', 'MPEG-4');    %Create an object mov to save the movie file
open(mov);                                  %Open the movie file based on the contents of mov
for T=1:100
    imagesc(Z(:,:,T),[-3 3]);set(gca,'YDir','normal');colorbar;
    writeVideo(mov, getframe(gcf));         %Write one frame of the movie based on the contents of mov
    pause(0.01);
end
close(mov);                                 %Close the movie file specified by mov