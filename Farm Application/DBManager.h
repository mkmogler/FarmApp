//
//  DBManager.h
//  Farm Application
//
//  Created by Kent Mogler on 12/15/14.
//  Copyright (c) 2014 Kent Mogler. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <sqlite3.h>

@interface DBManager : NSObject

-(NSArray *)loadDataFromDB:(NSString *)query;

-(void)executeQuery:(NSString *)query;

-(instancetype)initWithDatabaseFilename:(NSString *)localhost;

@property (nonatomic, strong) NSMutableArray *arrColumnNames;
@property (nonatomic) int affectedRows;
//possibly change long long
@property (nonatomic) long long lastInsertedRowID;

@end

@interface DBManager()
@property (nonatomic, strong) NSString *documentsDirectory;
@property (nonatomic, strong) NSString *databaseFilename;
@property (nonatomic, strong) NSMutableArray *arrResults;

-(void)runQuery:(const char *)query isQueryExecutable:(BOOL)queryExecutable;
-(void)copyDatabaseIntoDocumentsDirectory;

@end