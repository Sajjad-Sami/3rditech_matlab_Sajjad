function gyr = gyroscope (rawGyr , gyroScale, gyrB)
%calculates angular velocity from Gyroscope in degree/second
gyr = (rawGyr * gyroScale) - gyrB;
end
