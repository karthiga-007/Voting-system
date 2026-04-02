module voting_system (
    input clk,
    input reset,
    input vote_a,
    input vote_b,
    input vote_c,
    input [1:0] select,   // now 2-bit
    output [7:0] led
);

reg [7:0] count_a;
reg [7:0] count_b;
reg [7:0] count_c;

reg [1:0] winner;   // ✅ STEP 1: declare here

// Voting logic
always @(posedge clk or posedge reset) begin
    if (reset) begin
        count_a <= 8'd0;
        count_b <= 8'd0;
        count_c <= 8'd0;
    end else begin
        if (vote_a)
            count_a <= count_a + 1;
        else if (vote_b)
            count_b <= count_b + 1;
        else if (vote_c)
            count_c <= count_c + 1;
    end
end

// ✅ STEP 2: Winner logic (add THIS block)
always @(*) begin
    if (count_a >= count_b && count_a >= count_c)
        winner = 2'b00;   // A
    else if (count_b >= count_a && count_b >= count_c)
        winner = 2'b01;   // B
    else
        winner = 2'b10;   // C
end

// ✅ STEP 3: Modify LED output
assign led = (select == 2'b00) ? count_a :
             (select == 2'b01) ? count_b :
             (select == 2'b10) ? count_c :
             {6'b000000, winner};   // show winner

endmodule