### How to use with Gert's VGA666 DPI display screen

The VGA666 adaptor connects to the GPIO pins and allows a VGA display to be attached to the RPi. The normal VGA666 installation instructions should be followed to allow it to work with NOOBS.

Create a config.txt file with the following lines in it:

add dtoverlay=VGA666
enable_dpi_lcd=1
display_default_lcd=1
dpi_group=<group> (e.g. dpi_group=1, or dpi_group=2)
dpi_mode=<mode> (e.g. dpi_mode=28 - see tvservice for a list of possible modes)
