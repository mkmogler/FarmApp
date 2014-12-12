//
//  MedicationViewController.h
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-24.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MedicationViewController : UIViewController
@property (weak, nonatomic) IBOutlet UIPickerView *DrugIDPicker;
@property (weak, nonatomic) IBOutlet UIPickerView *HospitalIDPicker;
@property (weak, nonatomic) IBOutlet UITextField *DrugNameTextField;
@property (weak, nonatomic) IBOutlet UITextField *NumberOfPigsTextField;
@property (weak, nonatomic) IBOutlet UIPickerView *DosageTextField;
- (IBAction)DNEnd:(id)sender;
- (IBAction)NOPEnd:(id)sender;
- (IBAction)DTFEnd:(id)sender;

@end
