module logic (
    input sys_clk,
    input sys_btn_01,
    input sys_btn_02,
    output reg [5:0] led
);
    
    /*
    LEDは0の時に光る
    ボタンは押下された状態のときに0となる
    */

    wire btn_01, btn_02;
    assign btn_01 = ~sys_btn_01;
    assign btn_02 = ~sys_btn_02;

    always @(negedge sys_clk) begin
        led <= {
            ~btn_01,
            ~btn_02,
            1'b1,
            ~(btn_01 & btn_02),
            ~(btn_01 | btn_02),
            ~(btn_01 ^ btn_02)
        };
    end

endmodule
