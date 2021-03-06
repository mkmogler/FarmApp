//
//  MedicationViewController.h
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-24.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MedicationViewController : UIViewController<UIPickerViewDataSource, UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *DrugIDPicker;

@property (weak, nonatomic) IBOutlet UITextField *NumberOfPigsTextField;

- (IBAction)NOPEnd:(id)sender;
- (IBAction)DTFEnd:(id)sender;

@end
