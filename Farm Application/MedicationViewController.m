//
//  MedicationViewController.m
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-24.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import "MedicationViewController.h"

@interface MedicationViewController ()
{
    NSArray *_DrugIDPickerData;
}

@end

@implementation MedicationViewController
@synthesize DrugNameTextField;
@synthesize NumberOfPigsTextField;
@synthesize DosageTextField;
- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Initialize Data
    _DrugIDPickerData = @[@"(IJ)Penicillin", @"(IJ)Exede", @"(IJ)Baytril", @"(IJ)Draxxin", @"(IJ)Tylan 200", @"(IJ)Exenel", @"(IJ)Linco", @"(IJ)Dexamethasone", @"(IJ)Banamine", @"(WM)Amoxicillin", @"(WM)Asprin", @"(WM)Denegard", @"(WM)Linco", @"(WM)Sulfa-Trim", @"(WM)Tetra-Oxy", @"(WM)Tylan", @"(WM)Blue Lite Plus", @"(WM)Neomix", @"(WM)Gentamed"];
    
    // Connect data
    self.DrugIDPicker.dataSource = self;
    self.DrugIDPicker.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// The number of columns of data
- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _DrugIDPickerData.count;
}

// The data to return for the row and component (column) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _DrugIDPickerData[row];
}

-(void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    [self.view endEditing:YES];
}
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)DNEnd:(id)sender {
    [DrugNameTextField resignFirstResponder];
}

- (IBAction)NOPEnd:(id)sender {
    [NumberOfPigsTextField resignFirstResponder];
}

- (IBAction)DTFEnd:(id)sender {
    [DosageTextField resignFirstResponder];
}
@end
