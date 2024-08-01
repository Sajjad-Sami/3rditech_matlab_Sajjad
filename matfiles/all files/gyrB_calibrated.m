function gyroB = gyrB_calibrated (gyr , gyrB, calib_samples)
%function called for Calibration of gyroscope
gyroBD=0;
for x =1:calib_samples
    gyroBD = gyroBD + (gyr + gyrB ) / calib_samples;
end
gyroB = gyroBD;
end

