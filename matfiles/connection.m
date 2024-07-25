device = serialport("device_name", 115200 );%115200 is Baud Rate
%gyroscope needs values from 7 registers
data_read = read(device,7,"uint8");

