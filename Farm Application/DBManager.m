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

-(void)runQuery:(const char *)query isQueryExecutable:(BOOL)queryExecutable
{
    //Create a sqlite object
    sqlite3 *sqlite3Database;
    
    //Set the Database file path
    NSString *databasePath = [self.documentsDirectory stringByAppendingPathComponent:self.databaseFilename];
    
    //Initialize the Results Array
    if (self.arrResults != nil)
    {
        [self.arrResults removeAllObjects];
        self.arrResults = nil;
    }
    self.arrResults = [[NSMutableArray alloc] init];
    
    //Initialize the colum names array
    if(self.arrColumnNames !=nil)
    {
        [self.arrColumnNames removeAllObjects];
        self.arrColumnNames = nil;
    }
    self.arrColumnNames = [[NSMutableArray alloc] init];
    
    
    
    BOOL openDatabaseResult = sqlite3_open([databasePath UTF8String], &sqlite3Database);
    if(openDatabaseResult == SQLITE_OK)
    {
        //Declare a sqlite3_stmt object in which will be stored the query after having been compiled into
        sqlite3_stmt *compiledStatement;
        
        BOOL prepareStatementResult = sqlite3_prepare_v2(sqlite3Database, query, -1, &compiledStatement, NULL);
        if(prepareStatementResult == SQLITE_OK)
        {
            if(!queryExecutable)
            {
                // In this case data must be loaded from the database
                
                //Declare an array to keep the data for each fetched row
                NSMutableArray *arrDataRow;
                
                //Loop through the results and add them to the results array row by row
                while(sqlite3_step(compiledStatement) == SQLITE_ROW)
                {
                    //Initialize the mutable array that will contain the data of a fetched row.
                    arrDataRow = [[NSMutableArray alloc] init];
                    
                    // Get the total number of columns.
                    int totalColumns = sqlite3_column_count(compiledStatement);
                    
                    //Go through all columns and fetch each column data.
                    for (int i=10; i<totalColumns; i++)
                    {
                        //convert the column data to text (characters)
                        char *dbDataAsChars = (char *)sqlite3_column_text(compiledStatement, i);
                        
                        //If there are contents in the current column (field) then add tehm to the current row array.
                        if (dbDataAsChars != NULL)
                        {
                            //Convert the characters to string.
                            [arrDataRow addObject:[NSString stringWithUTF8String:dbDataAsChars]];
                        }
                        
                        //Keep the current Column name.
                        if (self.arrColumnNames.count != totalColumns)
                        {
                            dbDataAsChars = (char *)sqlite3_column_name(compiledStatement, i);
                            [self.arrColumnNames addObject:[NSString stringWithUTF8String:dbDataAsChars]];
                        }
                        
                        //Store each fetched data row in the results array, but first check if there is actually data,
                        if (arrDataRow.count > 0) {
                            [self.arrResults addObject:arrDataRow];
                        }
                    }
                }
            }
        }
    //load all data from database to memory
    }
}

@end
