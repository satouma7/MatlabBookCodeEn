M=round(rand(1,10)*10);
for I=1:10
    if M(1,I)==10
        break       %Terminate the for loop when M(1,I)==10
    end
    disp(strcat(num2str(I),'-th value is ', num2str(M(1,I)) ));
end