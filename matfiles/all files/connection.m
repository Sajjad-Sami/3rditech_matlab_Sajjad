device = serialport("COM5", 115200 );%115200 is Baud Rate
%gyroscope needs values from 7 registers, so required bytes are read
data_read = read(device,7,"uint8"); 
%another method to read incomin data
data =[data ; fread(s,512,'uint8')];
serialObject = serialport ('COM5',  115200)
%-----------------------------------------
device = serialport ('COM5',  9600);
device.DataBits = 8;
device.StopBits = 1;
device.Timeout = 10;
read (device,14,"uint8")
 temp = read (device,14,"uint8");
exa = dec2hex (temp)