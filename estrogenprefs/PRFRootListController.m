#import <Foundation/Foundation.h>
#import <spawn.h>
#import <Preferences/Preferences.h>
#import "PRFRootListController.h"

@implementation PRFRootListController

- (NSArray *)specifiers {
	if (!_specifiers) {
		_specifiers = [self loadSpecifiersFromPlistName:@"Root" target:self];
	}

	return _specifiers;
}

@end
