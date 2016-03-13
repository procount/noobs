### Installing Arch linux

Arch linux distros use extended file attributes that are not stored in a standard TAR archive.
Therefore they use BSDTAR to create their distro archives which are not compatible with NOOBS.
NOOBS adds BSDTAR support to install these files, allowing ARCH linux to be installed
by NOOBS. The partition_setup.sh file has been modified to allow ARCH linux distros to be 
installed directly from their website without converting into NOOBS's XZ format.

To install Arch it is necessary to add another repository to NOOBS.
Edit recovery.cmdline and add `alt-image-source=https://kent.dl.sourceforge.net/project/pinn/os/os_list_v3.json`

In addition, the recovery.cmdline should have `disablesafemode` added as a parameter since without it, the VGA666 will force NOOBS into safe mode due to its connections to the GPIO header.
