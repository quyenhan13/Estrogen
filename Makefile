TARGET := iphone:clang:latest:15.0
INSTALL_TARGET_PROCESSES = SpringBoard

THEOS_PACKAGE_SCHEME = rootless
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Estrogen

Estrogen_FILES = Tweak.x
Estrogen_CFLAGS = -fobjc-arc


include $(THEOS_MAKE_PATH)/tweak.mk
