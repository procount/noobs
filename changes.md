### Installation Progress

During the installation of the operating systems, NOOBS will write the percentage completed to a text
file called /tmp/progress. The format of this file is an integer (0-100) followed by a space, 
a '%' symbol and a line feed. It is updated only when the progress changes by at least 1%. 
Sometimes NOOBS will not know the maximum size, so in this case it shows the amount data written in MBs.
This feature mimics the progress dialog on the display and is useful in headless installations.

To make use of this feature a background shell script can be used. If a /background.sh script 
exists, it will be executed in the background whilst NOOBS runs. This can be used to read the 
/tmp/progress file and display the progress on the serial port, or a GPIO display etc.
