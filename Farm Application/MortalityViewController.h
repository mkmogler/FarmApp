//
//  MortalityViewController.h
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-24.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MortalityViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>

@property (weak, nonatomic) IBOutlet UITextField *totalPigs;
- (IBAction)totalPigsDidEnd:(id)sender;


@property (weak, nonatomic) IBOutlet UILabel *lblMortCurrentPig;

- (IBAction)btnMortBack:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *backButton;

- (IBAction)btnMortNext:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *nextButton;

@property (weak, nonatomic) IBOutlet UITextField *txtMortWeight;
@property (weak, nonatomic) IBOutlet UIPickerView *pckMortDeathType;

- (IBAction)WeightEnd:(id)sender;

@property (weak, nonatomic) IBOutlet UILabel *causeOfDeath;

- (IBAction)causeSelected:(id)sender;
@end
