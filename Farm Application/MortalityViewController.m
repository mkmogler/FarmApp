//
//  MortalityViewController.m
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-11-24.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import "MortalityViewController.h"

@interface MortalityViewController ()

@property (strong, nonatomic) NSArray *mortTypesArray;
/*@property (strong, nonatomic) NSArray *mortNumPigs;
 
 @property (strong, nonatomic) NSArray *mortWeights;
 
 @property (strong, nonatomic) NSArray *mortDeathType; */

@end

@implementation MortalityViewController
@synthesize lblMortTotalPigs;
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
    
    //Create some variables
    int intTotalPigs;
    int intCurrentPig;
    double dblWeight;
    int intMortPigCount;
    
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
    //Will pull data from a temporary array stored in this view
}

- (IBAction)btnMortNext:(id)sender
{
    //Will pull data from a temporary array stored in this view
}
- (IBAction)btnMortNewPig:(id)sender
{
    //Gets the string of the selected picker variable
    
    
    // NSInteger row= [[self.pckMortDeathType selectedRowInComponent:0];
    
    //NSString *select = [_pckMortDeathType objectAtIndex:[_pckMortDeathType selectedRowInComponent:0]];
    
    NSString *strSelectedDeathType;
    NSInteger row;
    row = [_pckMortDeathType selectedRowInComponent:0];
    strSelectedDeathType = [_mortTypesArray objectAtIndex:row];
    
    
    NSMutableArray *mortWeights = [[NSMutableArray alloc] init];
    NSMutableArray *mortDeathType = [[NSMutableArray alloc] init];

    
    [mortWeights addObject: txtMortWeight.text];
    [mortDeathType addObject: strSelectedDeathType];
    
    //Makes and populates the alert
    /*NSString *alertMessage = [NSString stringWithFormat:@]
    UIAlertView *newPigAlert = [[UIAlertView alloc]initWithTitle:@"New pig added!" message:[mortDeathType objectAtIndex:0] delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    
    [newPigAlert show]; */
    //For getting the string
    

    
    
}

- (IBAction)WeightEnd:(id)sender {
    [txtMortWeight resignFirstResponder];
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
