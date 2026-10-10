# WM8731 pins from the Terasic DE2-115 user manual, Table 4-17.
# I2C is shared with the TV decoder. SDA is open-drain; the board has pull-ups.

set_location_assignment PIN_D2 -to AUD_ADCDAT_I
set_location_assignment PIN_C2 -to AUD_ADCLRCK_O
set_location_assignment PIN_F2 -to AUD_BCLK_O
set_location_assignment PIN_D1 -to AUD_DACDAT_O
set_location_assignment PIN_E3 -to AUD_DACLRCK_O
set_location_assignment PIN_E1 -to AUD_XCK_O
set_location_assignment PIN_B7 -to I2C_SCLK_O
set_location_assignment PIN_A8 -to I2C_SDAT_IO

set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_ADCDAT_I
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_ADCLRCK_O
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_BCLK_O
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_DACDAT_O
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_DACLRCK_O
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to AUD_XCK_O
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to I2C_SCLK_O
set_instance_assignment -name IO_STANDARD "3.3-V LVTTL" -to I2C_SDAT_IO

set_instance_assignment -name CURRENT_STRENGTH_NEW 8MA -to AUD_ADCLRCK_O
set_instance_assignment -name CURRENT_STRENGTH_NEW 8MA -to AUD_BCLK_O
set_instance_assignment -name CURRENT_STRENGTH_NEW 8MA -to AUD_DACDAT_O
set_instance_assignment -name CURRENT_STRENGTH_NEW 8MA -to AUD_DACLRCK_O
set_instance_assignment -name CURRENT_STRENGTH_NEW 8MA -to AUD_XCK_O
set_instance_assignment -name CURRENT_STRENGTH_NEW 8MA -to I2C_SCLK_O
set_instance_assignment -name WEAK_PULL_UP_RESISTOR ON -to I2C_SDAT_IO
