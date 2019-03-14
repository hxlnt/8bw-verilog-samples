// A clock divider implemented in Verilog

// Define the inputs and outputs for the clock_divider module.
module clock_divider(
    // `clk` is a simulated hardware clock input. 
    // It alternates between high and low across a given time interval.
    input clk,
    // `reset` is a simulated hardware reset input (e.g., a reset button).
    // It goes high when enabled, low when not.
    input reset,
    // An output representing a half-speed version of `clk`.
    output reg half_clk
);

  // Any time `clk` goes from low to high...
  always @(posedge clk)
    // ...invert the value of `half_clk`.
    half_clk <= ~half_clk;
    // Example `clk` signal:      010101010101 
    // Example `half_clk` signal: 011001100110 
    
endmodule
