TARGET := iphone:clang:latest:14.0
THEOS_PACKAGE_SCHEME = roothide
SYSROOT = $(THEOS)/sdks/iPhoneOS16.5.sdk/

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = EstrogenPrefs
$(BUNDLE_NAME)_FILES = ESTRootListController.m
$(BUNDLE_NAME)_FRAMEWORKS = UIKit
$(BUNDLE_NAME)_PRIVATE_FRAMEWORKS = Preferences
$(BUNDLE_NAME)_INSTALL_PATH = /Library/PreferenceBundles
$(BUNDLE_NAME)_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp $(BUNDLE_NAME).plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/$(BUNDLE_NAME).plist$(ECHO_END)