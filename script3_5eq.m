function dL=script3_5eq(T,L)    %The function name needs to be the same as its file name
    global a b c d              %Declare a, b, c, and d as global variables
    dL=zeros(2,1);
    dL(1)=a*L(1)      -b*L(1)*L(2)  ;
    dL(2)=c*L(1)*L(2)-d*L(2)        ;
end