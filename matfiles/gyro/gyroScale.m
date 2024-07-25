function [gyroScale] = gyroScale(fssel)
%calculates full scale resolution factor for Gyroscope in degree/sec
%  default value of fssel for gyroscope is 2000dps
gyroScale = (2000.0 / (2^fssel)) / 32768.0;

end

