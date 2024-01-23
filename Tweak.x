#import <UIKit/UIKit.h>

%hook CSStatusTextView
- (void)setInternalLegalText:(NSString *)string {
    %orig(@"DangQuyen-VN <3");
}
%end
