TARGET := iphone:clang:latest:14.0
INSTALL_TARGET_PROCESSES = SpringBoard
SYSROOT = $(THEOS)/sdks/iPhoneOS13.7.sdk/
after-install::
	install.exec "killall -9 SpringBoard"
THEOS_PACKAGE_SCHEME = rootless
PACKAGE_VERSION = $(THEOS_PACKAGE_BASE_VERSION)

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = Estrogen

Estrogen_FILES = Tweak.x
Estrogen_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/tweak.mk
SUBPROJECTS += estrogenprefs
include $(THEOS_MAKE_PATH)/aggregate.mk