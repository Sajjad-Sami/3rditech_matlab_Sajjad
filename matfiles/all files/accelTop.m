function [acc_x , acc_y , acc_z] = accelTop (fssel, raw_accel_x, raw_accel_y,raw_accel_z, accelB_x, accelB_y , accelB_z)
num_calib_samples = 1000;
% scale factor for all axes , default value of fssel is 16 for accelerometer
accelScale_ = accelScale (fssel);
accS = 1; % initial value of Sensitivity Factor is 1
%First intermediate (an approx)value of acceleration along an axis is
%calculated and value stored in accl_x_i.
%Base on accl_x_i Scale Factor accelS is measured.
%Then acceleration final value is measured.
%
%-----------x-axis---------------------------------------%
acc_x_i = accel (raw_accel_x, accelScale_, accelB_x,accS); 
[accelS_x , ~ ] = accelS (accelB_x, num_calib_samples, acc_x_i);
acc_x = accel (raw_accel_x, accelScale_, accelB_x,accelS_x);
%--------------------------------------------------------%

%-----------Y-axis---------------------------------------%
acc_y_i = accel (raw_accel_y, accelScale_, accelB_y,accS); 
[ accelS_y ,~] = accelS (accelB_y, num_calib_samples, acc_y_i);
acc_y = accel (raw_accel_y, accelScale_, accelB_y,accelS_y);
%--------------------------------------------------------%

%-----------Z-axis---------------------------------------%
acc_z_i = accel (raw_accel_z, accelScale_, accelB_z,accS); 
[accelS_z ,~] = accelS (accelB_z, num_calib_samples, acc_z_i);
acc_z = accel (raw_accel_z, accelScale_, accelB_z,accelS_z);
%--------------------------------------------------------%


end