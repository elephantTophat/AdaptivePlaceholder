//
//  APTextfield.m
//  AdaptivePaceholder
//
//  Created by cj teuben on 5/27/14.
//
//

#import "APTextfield.h"

@implementation APTextfield

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        [self createFrame];
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

-(void) createFrame {
    self.layer.borderWidth = 2.0;
    
    self.layer.borderColor = [UIColor orangeColor].CGColor;
    
    self.layer.cornerRadius = self.frame.size.height/2;
    
    UIView *paddingView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, 10, 20)];
    self.leftView = paddingView;
    self.leftViewMode = UITextFieldViewModeAlways;
}


@end
