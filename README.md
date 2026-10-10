# ANC DSP
Real-time audio DSP + adaptive noise cancellation on DE2-115 FPGA, using Quartus. Goals: 20+ dB reduction and 1 ms total latency. The purpose of this project is to better understand real-time audio processing for an upcoming sleep mask project with ANC headphones.

## Hardware
- FPGA (Cyclone IV E `EP4CE115F29C7`, DE2-115)
- Mic
- Headphones
- Keyboard
- VGA screen
- USB-C audio adapter with mic-in (for measuring)
- 3.5 mm aux cables

## Software
- SystemVerilog
- Python (coefficient generation + golden models)

## Notes
- `rtl/anc_dsp_top.sv` is just the port list, outputs tied off
- `board/` pin and timing files are from COE3DQ5, McMaster ECE (Henry Ko / Nicola Nicolici)
- `syn/anc-dsp.qpf` is the Quartus project for `EP4CE115F29C7`
- measuring dB: MacBook headphone out -> board LINE IN, board LINE OUT -> USB-C audio adapter mic-in -> MacBook, play a 200 Hz tone, record ANC off vs on in Audacity, compare the tone peak in Plot Spectrum
