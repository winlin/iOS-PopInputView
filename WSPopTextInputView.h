//
//  WSPopTextInputView.h
//  BaccaratClient
//
//  Created by gtliu on 11/30/12.
//  Copyright (c) 2012 wicresoft. All rights reserved.
//

#import <UIKit/UIKit.h>
@class WSPopTextInputView;

@protocol WSPopTextInputViewDelegate <NSObject>
@required
-(void)getContentTextAndDismiss:(NSString *)content;
-(void)cancelButtonDownAndDismiss;
@end

@interface WSPopTextInputView : UIView
@property (assign, nonatomic) id <WSPopTextInputViewDelegate> delegate;
@property (retain, nonatomic) IBOutlet UILabel *headerTitleLB;
@property (retain, nonatomic) IBOutlet UITextField *inputContentTF;
- (IBAction)okButDown:(id)sender;
- (IBAction)cancelButDown:(id)sender;

@end
