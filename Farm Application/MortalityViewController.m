//
//  MortalityViewController.m
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-24.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import "MortalityViewController.h"
#import "mortPig.h"
@interface MortalityViewController ()

@property (strong, nonatomic) NSArray *mortTypesArray;
/*@property (strong, nonatomic) NSArray *mortNumPigs;
 
 @property (strong, nonatomic) NSArray *mortWeights;
 
 @property (strong, nonatomic) NSArray *mortDeathType; */

@end

@implementation MortalityViewController
@synthesize lblMortCurrentPig;
@synthesize txtMortWeight;

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
    
    [self.backButton setHidden:true];
    [self.nextButton setHidden:true];
    
    //Create array of death types
    self.mortTypesArray = [[NSArray alloc] initWithObjects:@"Previously Healthy", @"Pneumonia", @"Hemorrhagic Bowel", @"Lame", @"Strep", @"Tail Bite", @"Salmonella", @"Unthrifty/Thin", @"Twisted Gut", @"Ulcer", @"Other", nil];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (IBAction)btnMortBack:(id)sender
{
    int current = lblMortCurrentPig.text.intValue;
    [lblMortCurrentPig setText:[NSString stringWithFormat:@"%d", current-1]];
    if (current-1==1)
        [self.backButton setHidden:true];
    [self.nextButton setHidden:false];
}

- (IBAction)btnMortNext:(id)sender
{
    int current = lblMortCurrentPig.text.intValue;
    [lblMortCurrentPig setText:[NSString stringWithFormat:@"%d", current+1]];
    if (current+1==self.totalPigs.text.intValue)
        [self.nextButton setHidden:true];
    [self.backButton setHidden:false];
}

- (IBAction)WeightEnd:(id)sender {
    [txtMortWeight resignFirstResponder];
}

- (IBAction)totalPigsDidEnd:(id)sender
{
    if (self.totalPigs.text.intValue>1)
        [self.nextButton setHidden:false];
}
- (IBAction)causeSelected:(id)sender
{
    [self.causeOfDeath setText:[NSString stringWithFormat:@"%@", self.mortTypesArray[[self.pckMortDeathType selectedRowInComponent:0]]]];
}
//Set number of columns of picker
#pragma mark Picker Data Source Methods

-(NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
}

//Set number of rows of picker
-(NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent:(NSInteger)component
{
    return [_mortTypesArray count];
}

#pragma mark Picker Delegate Methods
//Populate the picker with the array
-(NSString *)pickerView:(UIPickerView *)pickerView titleForRow:(NSInteger)row forComponent:(NSInteger)component
{
    return [_mortTypesArray objectAtIndex:row];
}


@end
