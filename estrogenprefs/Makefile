TARGET := iphone:clang:latest:14.0
THEOS_PACKAGE_SCHEME = rootless
SYSROOT = $(THEOS)/sdks/iPhoneOS13.7.sdk/

include $(THEOS)/makefiles/common.mk

BUNDLE_NAME = EstrogenPrefs

EstrogenPrefs_FILES = PRFRootListController.m
EstrogenPrefs_FRAMEWORKS = UIKit
EstrogenPrefs_PRIVATE_FRAMEWORKS = Preferences
EstrogenPrefs_INSTALL_PATH = /Library/PreferenceBundles
EstrogenPrefs_CFLAGS = -fobjc-arc

include $(THEOS_MAKE_PATH)/bundle.mk