################################################################################
#
# rpi-wifi-firmware
#
################################################################################

RPI_WIFI_FIRMWARE_VERSION = f713a6054746bc61ece1c8696dce91a7b7e22dd9
RPI_WIFI_FIRMWARE_SITE = $(call github,RPi-Distro,firmware-nonfree,$(RPI_WIFI_FIRMWARE_VERSION))
RPI_WIFI_FIRMWARE_LICENSE = Proprietary
RPI_WIFI_FIRMWARE_LICENSE_FILES = LICENCE.broadcom_bcm43xx

define RPI_WIFI_FIRMWARE_INSTALL_TARGET_CMDS
	$(INSTALL) -D -m 0644 $(@D)/brcm/brcmfmac43143.bin $(TARGET_DIR)/lib/firmware/brcm/brcmfmac43143.bin
	$(INSTALL) -D -m 0644 $(@D)/brcm/brcmfmac43430-sdio.bin $(TARGET_DIR)/lib/firmware/brcm/brcmfmac43430-sdio.bin
	$(INSTALL) -D -m 0644 $(@D)/brcm/brcmfmac43430-sdio.txt $(TARGET_DIR)/lib/firmware/brcm/brcmfmac43430-sdio.txt
	$(INSTALL) -D -m 0644 $(@D)/brcm/brcmfmac43436-sdio.bin $(TARGET_DIR)/lib/firmware/brcm/brcmfmac43436-sdio.bin
	$(INSTALL) -D -m 0644 $(@D)/brcm/brcmfmac43436-sdio.txt $(TARGET_DIR)/lib/firmware/brcm/brcmfmac43436-sdio.txt
	$(INSTALL) -D -m 0644 $(@D)/brcm/brcmfmac43436-sdio.clm_blob $(TARGET_DIR)/lib/firmware/brcm/brcmfmac43436-sdio.clm_blob
	$(INSTALL) -D -m 0644 $(@D)/brcm/brcmfmac43455-sdio.bin $(TARGET_DIR)/lib/firmware/brcm/brcmfmac43455-sdio.bin
	$(INSTALL) -D -m 0644 $(@D)/brcm/brcmfmac43455-sdio.txt $(TARGET_DIR)/lib/firmware/brcm/brcmfmac43455-sdio.txt
	$(INSTALL) -D -m 0644 $(@D)/brcm/brcmfmac43455-sdio.clm_blob $(TARGET_DIR)/lib/firmware/brcm/brcmfmac43455-sdio.clm_blob
	$(INSTALL) -D -m 0644 $(@D)/brcm/brcmfmac43456-sdio.bin $(TARGET_DIR)/lib/firmware/brcm/brcmfmac43456-sdio.bin
	$(INSTALL) -D -m 0644 $(@D)/brcm/brcmfmac43456-sdio.txt $(TARGET_DIR)/lib/firmware/brcm/brcmfmac43456-sdio.txt
	$(INSTALL) -D -m 0644 $(@D)/brcm/brcmfmac43456-sdio.clm_blob $(TARGET_DIR)/lib/firmware/brcm/brcmfmac43456-sdio.clm_blob
endef

$(eval $(generic-package))
