# 50 MHz. outputs tied off for now

create_clock -name clk_50 -period 20.000 [get_ports {CLOCK_50_I}]

set_false_path -from [get_ports {Resetn SWITCH_I[*] PUSH_BUTTON_N_I[*] PS2_CLOCK_I PS2_DATA_I AUD_ADCDAT_I I2C_SDAT_IO}]
set_false_path -to [get_ports {LED_GREEN_O[*] LED_RED_O[*] SEVEN_SEGMENT_N_O[*][*] I2C_SCLK_O I2C_SDAT_IO AUD_XCK_O AUD_BCLK_O AUD_ADCLRCK_O AUD_DACLRCK_O AUD_DACDAT_O VGA_RED_O[*] VGA_GREEN_O[*] VGA_BLUE_O[*] VGA_CLOCK_O VGA_BLANK_O VGA_HSYNC_O VGA_VSYNC_O VGA_SYNC_O}]
