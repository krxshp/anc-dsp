`timescale 1ns/100ps

`ifndef DISABLE_DEFAULT_NET
`default_nettype none
`endif

// port list. outputs tied off. TODO: codec next

module anc_dsp_top (
	input logic CLOCK_50_I,
	input logic Resetn,
	input logic [17:0] SWITCH_I,
	input logic [3:0] PUSH_BUTTON_N_I,
	output logic [8:0] LED_GREEN_O,
	output logic [17:0] LED_RED_O,
	output logic [6:0] SEVEN_SEGMENT_N_O [7:0],
	output logic I2C_SCLK_O,
	inout wire I2C_SDAT_IO,
	input logic AUD_ADCDAT_I,
	output logic AUD_ADCLRCK_O,
	output logic AUD_BCLK_O,
	output logic AUD_DACDAT_O,
	output logic AUD_DACLRCK_O,
	output logic AUD_XCK_O,
	input logic PS2_CLOCK_I,
	input logic PS2_DATA_I,
	output logic [7:0] VGA_RED_O,
	output logic [7:0] VGA_GREEN_O,
	output logic [7:0] VGA_BLUE_O,
	output logic VGA_CLOCK_O,
	output logic VGA_BLANK_O,
	output logic VGA_HSYNC_O,
	output logic VGA_VSYNC_O,
	output logic VGA_SYNC_O
);

	// i2c idle, audio muted, display blank, leds off
	assign LED_GREEN_O = 9'b000000000;
	assign LED_RED_O = 18'b000000000000000000;
	assign SEVEN_SEGMENT_N_O[0] = 7'b1111111;
	assign SEVEN_SEGMENT_N_O[1] = 7'b1111111;
	assign SEVEN_SEGMENT_N_O[2] = 7'b1111111;
	assign SEVEN_SEGMENT_N_O[3] = 7'b1111111;
	assign SEVEN_SEGMENT_N_O[4] = 7'b1111111;
	assign SEVEN_SEGMENT_N_O[5] = 7'b1111111;
	assign SEVEN_SEGMENT_N_O[6] = 7'b1111111;
	assign SEVEN_SEGMENT_N_O[7] = 7'b1111111;
	assign I2C_SCLK_O = 1'b1;
	assign I2C_SDAT_IO = 1'bz;
	assign AUD_ADCLRCK_O = 1'b0;
	assign AUD_BCLK_O = 1'b0;
	assign AUD_DACDAT_O = 1'b0;
	assign AUD_DACLRCK_O = 1'b0;
	assign AUD_XCK_O = 1'b0;
	assign VGA_RED_O = 8'h00;
	assign VGA_GREEN_O = 8'h00;
	assign VGA_BLUE_O = 8'h00;
	assign VGA_CLOCK_O = 1'b0;
	assign VGA_BLANK_O = 1'b0;
	assign VGA_HSYNC_O = 1'b1;
	assign VGA_VSYNC_O = 1'b1;
	assign VGA_SYNC_O = 1'b1;

endmodule

`ifndef DISABLE_DEFAULT_NET
`default_nettype wire
`endif
