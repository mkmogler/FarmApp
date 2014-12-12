//
//  InventoryViewController.m
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-24.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import "InventoryViewController.h"

@interface InventoryViewController ()
{
    NSArray *_SourcePickerData;
}

@end

@implementation InventoryViewController
@synthesize NumberOfPigsInTextField;
@synthesize NumberOfPigsOutTextField;
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
    _SourcePickerData = @[@"Pig Hill(P)", @"Coyote Ridge(C)", @"Jackrabbit Farms(J)", @"Windy Plains(W)", @"Open Market(O)"];
    
    // Connect Data
    self.SourcePicker.dataSource = self;
    self.SourcePicker.delegate = self;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

// The number of colums of data
- (int)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

// The number of rows of data
- (int)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return _SourcePickerData.count;
}

//The data to return for the row and component (colum) that's being passed in
- (NSString*)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return _SourcePickerData[row];
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

- (IBAction)NPIEnd:(id)sender {
    [NumberOfPigsInTextField resignFirstResponder];
}

- (IBAction)NPOEnd:(id)sender {
    [NumberOfPigsOutTextField resignFirstResponder];
}
@end