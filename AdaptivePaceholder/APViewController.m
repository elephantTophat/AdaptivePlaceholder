//
//  APViewController.m
//  AdaptivePaceholder
//
//  Created by cj teuben on 5/27/14.
//
//

#import "APViewController.h"
#import "APTextfield.h"
#import "APTextFieldView.h"

@interface APViewController ()

@end

@implementation APViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    APTextFieldView *testTwo = [[APTextFieldView alloc]  initWithFrame:CGRectMake(5, 90, 200, 60)];
    //pass in placeholder text
    
    [testTwo addPlaceholder:@"Username"];
    
    [self.view addSubview:testTwo];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
