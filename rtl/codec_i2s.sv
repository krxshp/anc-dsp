`timescale 1ns/100ps

`ifndef DISABLE_DEFAULT_NET
`default_nettype none
`endif

// i2s starter. shift in/out on bclk. left/right split is not done.

module codec_i2s #(
	parameter DATA_WIDTH = 24
) (
	input logic bclk,
	input logic lrclk,
	input logic sdin,
	output logic sdout,
	output logic [DATA_WIDTH-1:0] left_rx,
	output logic [DATA_WIDTH-1:0] right_rx,
	input logic [DATA_WIDTH-1:0] left_tx,
	input logic [DATA_WIDTH-1:0] right_tx
);

	logic [DATA_WIDTH-1:0] rx_sr;
	logic [DATA_WIDTH-1:0] tx_sr;
	logic lr_q;

	// TODO: count bits and latch at the end of a slot
	// TODO: one bclk delay after lrclk
	// TODO: left vs right from lrclk

	always_ff @(posedge bclk) begin
		lr_q <= lrclk;
		rx_sr <= {rx_sr[DATA_WIDTH-2:0], sdin};
		if (lrclk != lr_q)
			tx_sr <= lrclk ? right_tx : left_tx;
		else
			tx_sr <= {tx_sr[DATA_WIDTH-2:0], 1'b0};
	end

	assign sdout = tx_sr[DATA_WIDTH-1];
	// TODO: update these only on a word boundary
	assign left_rx = rx_sr;
	assign right_rx = rx_sr;

endmodule

`ifndef DISABLE_DEFAULT_NET
`default_nettype wire
`endif
