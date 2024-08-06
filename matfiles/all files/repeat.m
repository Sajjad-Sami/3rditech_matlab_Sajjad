function [add ,mul ] = repeat(x,y)
%performs repeatedmaddition and subtraction after a fixed time delay
addd = 0;
while true
    disp('Repeating code block');
    add = x + y;
    mul = x * y;
    disp (add);
    pause(1);
    
    for z =1:10
      addd = addd + 1;
      
    end
    disp(addd);
end
end



