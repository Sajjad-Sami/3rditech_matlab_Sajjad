function  [acc] = accel (rawaccel ,accelScale ,accB, accS)
%value of acceleration for x axis in m/s/s
acc = ((rawaccel * accelScale) - accB) * accS;
end
