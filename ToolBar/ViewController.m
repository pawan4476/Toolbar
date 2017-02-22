//
//  ViewController.m
//  ToolBar
//
//  Created by Nagam Pawan on 9/23/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()


@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)tapGesture:(id)sender {
    self.date.hidden = YES;
    self.toolBar.hidden = YES;
    _textField.background = [UIImage imageNamed:@"gray-1.png"];
}
- (IBAction)Cancel:(id)sender {
    self.date.hidden = YES;
    self.toolBar.hidden = YES;
    _textField.text = @"";
    
}

- (IBAction)Done:(id)sender {
    NSDateFormatter *dateFormatter = [[NSDateFormatter alloc]init];
    [dateFormatter setDateFormat:@"dd : MM : YYYY HH : mm : ss"];
    NSString *dateString = [dateFormatter stringFromDate:self.date.date];
    self.textField.text = dateString;
    

}
- (IBAction)datePicker:(id)sender {
}
-(BOOL)textFieldShouldBeginEditing:(UITextField *)textField{
    _date.hidden = NO;
    _toolBar.hidden = NO;
    _textField.borderStyle = UITextBorderStyleNone;
    _textField.background = [UIImage imageNamed:@"lineNew3x-1.png"];

    return false;
}

@end
