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
{
    NSMutableArray *mortPigs;
    NSInteger currentID;
    NSInteger count;
}
@synthesize lblMortTotalPigs;
@synthesize lblMortCurrentPig;
@synthesize txtMortWeight;
@synthesize btnMortNewPigProp;
@synthesize btnUpdatePigProp;

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
    mortPigs= [[NSMutableArray alloc] init];

    
    //Create some variables
    int intTotalPigs;
    int intCurrentPig;
    double dblWeight;
    int intMortPigCount;
    currentID = 1;
    count = 0;
    
    
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
    if(currentID > 1)
    {
        mortPig *pig = [mortPigs objectAtIndex:currentID -2];
        NSString *prevID = [NSString stringWithFormat:@"%d", currentID-1];
        NSString *prevWeight = [NSString stringWithFormat:@"%@", pig.weight];
        
        
        lblMortCurrentPig.text = prevID;
        
        txtMortWeight.text = prevWeight;
        
        currentID--;
        if(currentID == count)
        {
            btnMortNewPigProp.enabled = false;
            btnUpdatePigProp.enabled = true;
        }
        
        
    }
    
}

- (IBAction)btnMortNext:(id)sender
{
    if(currentID < count)
    {
        mortPig *pig = [mortPigs objectAtIndex:currentID];
        NSString *nextID = [NSString stringWithFormat:@"%d", currentID+1];
        NSString *nextWeight = [NSString stringWithFormat:@"%@", pig.weight];
        
        
        lblMortCurrentPig.text = nextID;
        
        txtMortWeight.text = nextWeight;
        currentID++;
        
    }
    else if(currentID == count)
    {
        NSString *nextID = [NSString stringWithFormat:@"%d", currentID+1];
        lblMortCurrentPig.text = nextID;
        txtMortWeight.text = @"";
        currentID++;
        btnMortNewPigProp.enabled = true;
        btnUpdatePigProp.enabled = false;
    }
    
}
- (IBAction)btnUpdatePig:(id)sender
{
    NSInteger getPigID = currentID - 1;
    
    //Get death type from picker
    NSString *strSelectedDeathType;
    NSInteger row = [_pckMortDeathType selectedRowInComponent:0];
    strSelectedDeathType = [_mortTypesArray objectAtIndex:row];
    
    //Make number formatter to make strings decimal
    NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
    [nf setNumberStyle:NSNumberFormatterDecimalStyle];
    
    
    //pass values into pig
    mortPig *pig = [[mortPig alloc] init];
    NSNumber *temp = [NSNumber numberWithInt:count];
    pig.pigID = temp;
    pig.weight = [nf numberFromString:txtMortWeight.text];
    pig.deathType = strSelectedDeathType;
    //[mortPigs addObject:pig];
    
    [mortPigs removeObjectAtIndex:getPigID];
    [mortPigs insertObject:pig atIndex:getPigID];

    UIAlertView *Success = [[UIAlertView alloc]initWithTitle:@"Success!" message: @"Pig Updated" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
    [Success show];

}

- (IBAction)btnMortNewPig:(id)sender
{

    if (txtMortWeight.text && txtMortWeight.text.length > 0)
    {
        count++;
        currentID++;
        
        //Get death type from picker
        NSString *strSelectedDeathType;
        NSInteger row = [_pckMortDeathType selectedRowInComponent:0];
        strSelectedDeathType = [_mortTypesArray objectAtIndex:row];
        
        //Make number formatter to make strings decimal
        NSNumberFormatter *nf = [[NSNumberFormatter alloc] init];
        [nf setNumberStyle:NSNumberFormatterDecimalStyle];
        
        
        //pass values into pig
        mortPig *pig = [[mortPig alloc] init];
        NSNumber *temp = [NSNumber numberWithInt:count];
        pig.pigID = temp;
        pig.weight = [nf numberFromString:txtMortWeight.text];
        pig.deathType = strSelectedDeathType;
        [mortPigs addObject:pig];
        
        
        
        
        //Makes and populates the alert
        
        NSString *alertMessage = [NSString stringWithFormat:@"Pig " "%@" @"\nWeight: " "%@" @"\nDeath Type: " "%@", pig.pigID, pig.weight, pig.deathType];
        UIAlertView *newPigAlert = [[UIAlertView alloc]initWithTitle:@"New pig added!" message:alertMessage delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [newPigAlert show];
        
        NSString *labelCount = [NSString stringWithFormat:@"%d", count];
        NSString *labelCount1 = [NSString stringWithFormat:@"%d", count +1];
        
        lblMortCurrentPig.text = labelCount1;
        lblMortTotalPigs.text = labelCount;
        
        txtMortWeight.text = @"";

    }
    else
    {
        UIAlertView *error = [[UIAlertView alloc]initWithTitle:@"ERROR" message: @"A weight has not been entered" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil];
        [error show];
    }
        
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
