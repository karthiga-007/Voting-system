`timescale 1ns/1ps

module voting_system_tb;

reg clk;
reg reset;
reg vote_a;
reg vote_b;
reg vote_c;
reg select;

wire [7:0] led;

// Instantiate DUT
voting_system uut (
    .clk(clk),
    .reset(reset),
    .vote_a(vote_a),
    .vote_b(vote_b),
    .vote_c(vote_c),
    .select(select),
    .led(led)
);

// Clock
always #5 clk = ~clk;

initial begin
    $dumpfile("voting_system.vcd");
    $dumpvars(0, voting_system_tb);

    clk = 0;
    reset = 1;
    vote_a = 0;
    vote_b = 0;
    vote_c = 0;
    select = 0;

    #10 reset = 0;

    // Voting
    #10 vote_a = 1; #10 vote_a = 0;
    #10 vote_b = 1; #10 vote_b = 0;
    #10 vote_a = 1; #10 vote_a = 0;

    // Switch display
    #20 select = 1;
    #20 select = 0;

 
end

endmodule
