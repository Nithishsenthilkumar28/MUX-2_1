
module mux2_1_tb;

    reg A;
    reg B;
    reg S;
    wire Y;

    // Instantiate the MUX
    mux2_1 uut (
        .A(A),
        .B(B),
        .S(S),
        .Y(Y)
    );

    initial begin

        $dumpfile("mux2_1.vcd");
        $dumpvars(0, mux2_1_tb);

        $monitor("Time=%0t A=%b B=%b S=%b Y=%b",
                  $time, A, B, S, Y);

        // Test 1
        A = 0; B = 0; S = 0;
        #10;

        // Test 2
        A = 1; B = 0; S = 0;
        #10;

        // Test 3
        A = 0; B = 1; S = 0;
        #10;

        // Test 4
        A = 1; B = 1; S = 0;
        #10;

        // Test 5
        A = 0; B = 0; S = 1;
        #10;

        // Test 6
        A = 1; B = 0; S = 1;
        #10;

        // Test 7
        A = 0; B = 1; S = 1;
        #10;

        // Test 8
        A = 1; B = 1; S = 1;
        #10;

        $finish;
    end

endmodule

