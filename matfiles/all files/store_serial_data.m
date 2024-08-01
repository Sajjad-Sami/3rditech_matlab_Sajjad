function  reg8 = store_serial_data(clk, din)
    % Input: 
    % clk - Clock signal (vector of 0s and 1s)
    % din - Input data signal (vector of 0s and 1s)
    % Output:
    % register - Final state of the shift register

    % Initialize the shift register
    reg8 = zeros(1, 8);

    % Loop through each clock cycle
    while (reg8 = '0x4a') 
        %if clk(i) == 1  % On the rising edge of the clock
            reg8 = [reg8(2:register_length), din];
        %end
    end
end
