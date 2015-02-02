//
//  Singleton.h
//  Farm Application
//
//  Created by Thelen, Scott J on 2015-02-02.
//  Copyright (c) 2015 Kent Mogler. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface singleton : NSObject
{
    NSString *name;
    
    NSString *barn;
    
    NSString *room;
    NSString *status;
    
    NSString *nPigSource;
    NSInteger *nNumPigs;
    NSString *nPigNotes;
    
    float *tempHigh;
    float *tempLow;
    float *gallons;
    
    NSInteger *pigsIn;
    NSInteger *pigsSold;
    NSString *pigsSource;
    
    NSString *drug;
    NSInteger *numPigsDrugged;
    NSString *dosage;
    
    NSArray *pigsWeight;
    NSArray *pigsDeathReason;
}

@property (nonatomic, assign) NSString *name;

@property (nonatomic, assign) NSString *barn;

@property (nonatomic, assign) NSString *room;
@property (nonatomic, assign) NSString *status;

@property (nonatomic, assign) NSString *nPigSource;
@property (nonatomic, assign) NSInteger *nNumPigs;
@property (nonatomic, assign) NSString *nPigNotes;

@property (nonatomic, assign) float *tempHigh;
@property (nonatomic, assign) float *tempLow;
@property (nonatomic, assign) float *gallons;

@property (nonatomic, assign) NSInteger *pigsIn;
@property (nonatomic, assign) NSInteger *pigsSold;
@property (nonatomic, assign) NSString *pigsSource;

@property (nonatomic, assign) NSString *drug;
@property (nonatomic, assign) NSInteger *numPigsDrugged;
@property (nonatomic, assign) NSString *dosage;

@property (nonatomic, assign) NSArray *pigsWeight;
@property (nonatomic, assign) NSArray *pigsDeathReason;

+(id)singletonData;

@end
