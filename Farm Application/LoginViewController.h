//
//  LoginViewController.h
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-23.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoginViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>

@property (weak, nonatomic) IBOutlet UIPickerView *namePicker;
@property (weak, nonatomic) IBOutlet UIControl *miniView;
@property (weak, nonatomic) IBOutlet UITextField *passwordText;

- (IBAction)passwordDidBegin:(id)sender;
- (IBAction)passwordDidEnd:(id)sender;
- (IBAction)viewTapped:(id)sender;
- (IBAction)logIn:(id)sender;


@end
