//
//  ViewController.h
//  ToolBar
//
//  Created by Nagam Pawan on 9/23/16.
//  Copyright © 2016 Nagam Pawan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController<UITextFieldDelegate, UIGestureRecognizerDelegate>
- (IBAction)tapGesture:(id)sender;
@property (strong, nonatomic) IBOutlet UITextField *textField;
- (IBAction)Cancel:(id)sender;
- (IBAction)Done:(id)sender;
@property (strong, nonatomic) IBOutlet UIDatePicker *date;
//- (IBAction)datePicker:(id)sender;
@property (strong, nonatomic) IBOutlet UIToolbar *toolBar;

@end

