`timescale 1ns/1ps
module sync_FIFO_tb;
  reg clk;
  reg rst;
  reg wr_en;
  reg rd_en;
  reg [7:0] din;
  wire [7:0] dout;
  wire full;
  wire empty;
  
  sync_FIFO dut (
        .clk(clk),
        .rst(rst),
        .wr_en(wr_en),
        .rd_en(rd_en),
        .din(din),
        .dout(dout),
        .full(full),
        .empty(empty)
  );

  always #5 clk = ~clk;
  initial begin
    clk = 0;
    rst = 1;
    wr_en = 0;
    rd_en = 0;
    din = 0;
    
    #15;
    rst = 0;
    
    $display("\n---- WRITE OPERATION ----");
        repeat (5) begin
            @(posedge clk);
            #1; // Non-blocking/setup emulation delay
            wr_en = 1;
            rd_en = 0;
            din = din + 1;
        end

        @(posedge clk);
        #1;
        wr_en = 0; // Stop writing
    
    $display("\n---- READ OPERATION ----");
        repeat (5) begin
            @(posedge clk);
            #1; 
            rd_en = 1;
            wr_en = 0;
        end

        @(posedge clk);
        #1;
        rd_en = 0; // Stop reading
    
    $display("\n---- READ & WRITE TOGETHER ----");
        repeat (5) begin
            @(posedge clk);
            #1; 
            wr_en = 1;
            rd_en = 1;
            din = din + 1;
        end

        @(posedge clk);
        #1;
        wr_en = 0;
        rd_en = 0;

        #20;
        $display("\nSimulation Done");
        $finish;
    end
  
    always @(posedge clk) begin
        #2; 
      if (wr_en && !rd_en)
        $display("WRITE: din=%0d | full=%0b empty=%0b", din, full, empty);
      else if (rd_en && !wr_en)
        $display("READ : dout=%0d | full=%0b empty=%0b", dout, full, empty);
      else if (wr_en && rd_en)
        $display("RW   : din=%0d dout=%0d | full=%0b empty=%0b", din, dout, full, empty);
    end
      endmodule
