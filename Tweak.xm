#import <UIKit/UIKit.h>
#import <CaptainHook/CaptainHook.h>

%hook UIStatusBarItemView
- (id)textColorForStyle:(int)arg1
{
	int r = (arc4random()%255)+1;
	int g = (arc4random()%255)+1;
	int b = (arc4random()%255)+1;

	return [UIColor colorWithRed:r/255.0f green:g/255.0f blue:b/255.0f alpha:1.0];

}
%end