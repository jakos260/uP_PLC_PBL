module digital_io(clk, en, direction, data_in, data_out, io_port);


    input   clk;        // The standard clock    
    input   en;         // Enable signal
    input   direction;  // Direction of io, 1 = set output, 0 = read input
    input   data_in;    // Data to send out when direction is 1
    output  data_out;   // Result of input pin when direction is 0
    inout   io_port;     // The i/o port to send data through

    reg a, b;    

    assign io_port  = direction ? a : 1'bz;
    assign data_out = b;

    always @ (posedge clk)
    begin
        if(en) begin
            b <= io_port;
            a <= data_in;
        end
    end
endmodule