//
//  EntryScreenViewController.h
//  Farm Application
//
//  Created by Nelson, Trevor J on 2014-12-10.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface EntryScreenViewController : UIViewController

@property (weak, nonatomic) IBOutlet UILabel *room;

- (IBAction)submit:(id)sender;

@end
