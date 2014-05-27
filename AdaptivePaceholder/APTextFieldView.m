//
//  APTextFieldView.m
//  AdaptivePaceholder
//
//  Created by cj teuben on 5/27/14.
//
//

#import "APTextFieldView.h"

@implementation APTextFieldView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor whiteColor];
        //add textfield with loose label for placeholder
        [self setup];
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

-(void) setup{
    //Make TF Rectangle
    CGRect textFieldRect = CGRectMake(0, 10,
               self.frame.size.width,
               self.frame.size.height - 20);
    
    _adaptiveTextField = [[APTextfield alloc] initWithFrame:textFieldRect];
    _adaptiveTextField.delegate = self;
    //Add subview
    [self addSubview:_adaptiveTextField];
}

-(void) addPlaceholder:(NSString*)placeholderText{
    
    CGRect placeHolderRect = CGRectMake(self.frame.origin.x + 15,
                                        self.frame.size.height/2 - 11,
                                        self.frame.size.width - self.frame.size.height,
                                        26);
    
    _adaptivePlaceHolder = [[UILabel alloc] initWithFrame:placeHolderRect];
    [_adaptivePlaceHolder setBackgroundColor: self.backgroundColor];
    [_adaptivePlaceHolder setFont:[UIFont systemFontOfSize:16.0f]];
    [_adaptivePlaceHolder setText:placeholderText];
    [_adaptivePlaceHolder sizeToFit];
    [_adaptivePlaceHolder setTextColor:[UIColor orangeColor]];
    
    [self addSubview:_adaptivePlaceHolder];
}

-(void) textFieldDidBeginEditing:(UITextField *)textField {
    [self shiftPlaceHolder];
}

-(void) textFieldDidEndEditing:(UITextField *)textField {
    [self resignFirstResponder];
}

-(void) shiftPlaceHolder {
    [UIView animateWithDuration:0.5 animations:^ {
        _adaptivePlaceHolder.center =
        CGPointMake(_adaptivePlaceHolder.center.x,
                    _adaptiveTextField.frame.origin.y);
    } completion:nil];
}
@end
