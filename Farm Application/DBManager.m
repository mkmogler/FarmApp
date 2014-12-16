//
//  DBManager.m
//  Farm Application
//
//  Created by Kent Mogler on 12/15/14.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import "DBManager.h"

@implementation DBManager
-(instancetype)initWithDatabaseFilename:(NSString *)localhost
{
    self = [super init];
    if (self)
    {
        //Set the documents directory path to the documentsDirectory property
        NSArray *paths = NSSearchPathForDirectoriesInDomains(NSDocumentationDirectory, NSUserDomainMask, YES);
        self.documentsDirectory = [paths objectAtIndex:0];
        
        //Keep the Database Filename.
        self.databaseFilename = localhost;
        
        //Copy the database file into the documents directory if necessary
        [self copyDatabaseIntoDocumentsDirectory];
        
    }
    return self;
}

-(void)copyDatabaseIntoDocumentsDirectory
{
    //Check if the database file exists in the documents directory.
    NSString *destinationPath = [self.documentsDirectory stringByAppendingPathComponent:self.databaseFilename];
    if(![[NSFileManager defaultManager] fileExistsAtPath:destinationPath])
    {
        //The database file does not exist in the documents directory, so copy it from the main bundle now.
        NSString *sourcePath = [[[NSBundle mainBundle] resourcePath] stringByAppendingPathComponent: self.databaseFilename];
        NSError *error;
        [[NSFileManager defaultManager] copyItemAtPath:sourcePath toPath:destinationPath error:&error];
        
        //cehck if any error occurred during copying and displaying it..
        if(error != nil)
        {
            NSLog(@"%@", [error localizedDescription]);
        }
    }
}
@end
