//
//  WSPopTextInputView.m
//  BaccaratClient
//
//  Created by gtliu on 11/30/12.
//  Copyright (c) 2012 wicresoft. All rights reserved.
//

#import "WSPopTextInputView.h"

@implementation WSPopTextInputView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

- (void)dealloc {
    [_headerTitleLB release];
    [_inputContentTF release];
    [super dealloc];
}
- (IBAction)okButDown:(id)sender {
    NSString *str = [_inputContentTF.text stringByReplacingOccurrencesOfString:@" " withString:@""];
    [_delegate getContentTextAndDismiss:str];
}

- (IBAction)cancelButDown:(id)sender {
    if ([_delegate respondsToSelector:@selector(cancelButtonDownAndDismiss)]) {
        [_delegate cancelButtonDownAndDismiss];
    }
}
@end
