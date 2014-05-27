//
//  APTextFieldView.h
//  AdaptivePaceholder
//
//  Created by cj teuben on 5/27/14.
//
//

#import <UIKit/UIKit.h>
#import "APTextfield.h"

@interface APTextFieldView : UIView <UITextFieldDelegate>

@property (nonatomic, retain) APTextfield *adaptiveTextField;
@property (nonatomic) UILabel *adaptivePlaceHolder;
@property (nonatomic, copy) NSString* placeholderString;

-(void) addPlaceholder:(NSString*)placeholderText;

@end
