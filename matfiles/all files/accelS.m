function [accS , accB] = accelS (accB, calib_samples,a)
%function to calculate scale factor
accMin = 0; accMax = 0; accBD = 0;
accS = 1 ;                      %accS initialized to 1 
   for x = 1 : calib_samples
      accBD = (accBD + a/accS + accB) / calib_samples;
   end
   if (accBD > 0.9)
      accMax = accBD;
   end
   if (accBD < -0.9)
       accMin = accBD;
   end
   if (abs(accMin) > 0.9) && (abs(accMax) > 0.9) 
      accB = (accMax + accMin) / 2;
      accS = 1 / ((abs(accMax) + abs(accMin))/2);
   end 
    
end