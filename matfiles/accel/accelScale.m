function [accelScale] = accelScale(fssel)
%Calaculates Scaling factor for measurement of acceleration
%k = 4 - fssel;
accelScale = ( 2^(4 - fssel) ) / 32768;
end

