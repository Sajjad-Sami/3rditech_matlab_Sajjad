function [gyr_x, gyr_y, gyr_z] = gyroTop (fssel, rawGyr_x, rawGyr_y, rawGyr_z, gyrB_x,gyrB_y,gyrB_z)

calib_samples = 1000;  %mentioned in git repository
%calculation of Scaling Factor for Gyroscope, it will be same for all axes
gyroScale_ = gyroScale(fssel);
%gyr_ _i     : initial angular velocity
%gyrB_ _calib: calibration of bias of sensor (if any)
%gyr_        : final angular velocity in dps
%

%--------------------x-axis--------------------------------
gyr_x_i = gyroscope (rawGyr_x, gyroScale_, gyrB_x); 
gyrB_x_calib = gyrB_calibrated (gyr_x_i , gyrB_x, calib_samples);
%for x-axis gyroscope valuein dps
gyr_x = gyroscope (rawGyr_x, gyroScale_, gyrB_x_calib);
%------------------------------------------------------------

%--------------------y-axis--------------------------------
gyr_y_i = gyroscope (rawGyr_y, gyroScale_, gyrB_y); 
gyrB_y_calib = gyrB_calibrated (gyr_y_i , gyrB_y, calib_samples);
%for y-axis gyroscope valuein dps
gyr_y = gyroscope (rawGyr_y, gyroScale_, gyrB_y_calib);
%------------------------------------------------------------

%--------------------z-axis--------------------------------
gyr_z_i = gyroscope (rawGyr_z, gyroScale_, gyrB_z); 
gyrB_z_calib = gyrB_calibrated (gyr_z_i , gyrB_z, calib_samples);
%for z-axis gyroscope valuein dps
gyr_z = gyroscope (rawGyr_z, gyroScale_, gyrB_z_calib);
%------------------------------------------------------------


end

