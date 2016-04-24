### How to auto-switch HDMI/DSI screen configurations

If an HDMI and a DSI screeen (such as the Raspberry Pi Touch Screen) are both connected to the Raspberry Pi, the selection of which screen is to be used as the default needs to be selected in the config.txt file, which means constantly having to change config.txt to match whichever screen is required. This is because the DSI screen can only be selected at boot time, although without [i]any[/i] configuration the GPU will select the DSI screen in preference to the HDMI. PINN provides some limited ability to reverse this prioriy. 

This use case assumes that the DSI screen is always connected, and is normally used. But if an HDMI screen is connected, then the display will automatically switch to it. 

[li] 
[*] Create a config.txt file in the PINN root partition. Ensure it has the line ********* to disable the DSI screen and select the HDMI screen.
[*] Edit recovery.cmdline and add the `dsi` keyword.
[*] In the boot partition of any installed OS, create a config.dsi file to configure the DSI screen, and a config.hdmi file to configure the hdmi screen.
[/li]
When PINN boots, the HDMI screen will be selected, so to use any PINN feature, an HDMI screen must be connected. 
PINN will automatically boot the last selected OS after it times out. If a HDMI screen is attached, PINN will copy the config.hdmi file to config.txt on the selected OS and reboot into it.
If an HDMI screen was not detected, PINN will copy the config.dsi file to config.txt on the selected OS and reboot into it.

