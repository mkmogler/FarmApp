//
//  MortalityViewController.h
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-24.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MortalityViewController : UIViewController <UIPickerViewDelegate, UIPickerViewDataSource>
@property (weak, nonatomic) IBOutlet UILabel *lblMortTotalPigs;
@property (weak, nonatomic) IBOutlet UILabel *lblMortCurrentPig;
- (IBAction)btnMortBack:(id)sender;
- (IBAction)btnMortNext:(id)sender;
@property (weak, nonatomic) IBOutlet UITextField *txtMortWeight;
@property (weak, nonatomic) IBOutlet UIPickerView *pckMortDeathType;
- (IBAction)btnUpdatePig:(id)sender;
@property (weak, nonatomic) IBOutlet UIButton *btnUpdatePigProp;
@property (weak, nonatomic) IBOutlet UIButton *btnMortNewPigProp;


- (IBAction)btnMortNewPig:(id)sender;
- (IBAction)WeightEnd:(id)sender;


@end
