//
//  EntryScreenViewController.m
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-12-10.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import "EntryScreenViewController.h"
#import "Singleton.h"

@interface EntryScreenViewController ()

@end

@implementation EntryScreenViewController

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
    Singleton *single = [Singleton singletonData];
    [self.room setText:single.room];
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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

- (IBAction)submit:(id)sender {
}
@end
