
%-------------execution---------------
device = serialport ('COM5',  9600);
device.DataBits = 8;
device.StopBits = 1;
device.Timeout = 10;
temp = read (device,14,"uint8");
ascii = char (temp);

numPairs = length(ascii) / 2;
% Initialize a cell array to store the pairs
pairs = cell(1, numPairs);
for i = 1:numPairs
    % Extract two characters
    pair = ascii((2*i-1):(2*i));
    
    % Store the pair in the cell array
    pairs{i} =hex2dec (pair);
    fssel = pairs{1};
    rgx = pairs {2};
    rgy = pairs {3};
    rgz = pairs {4};
    bgx = pairs {5};
    bgy = pairs {6};
    bgz = pairs {7};
end
[gx , gy , gz] = gyroTop (fssel,rgx,rgy,rgz,bgx,bgy,bgz)
