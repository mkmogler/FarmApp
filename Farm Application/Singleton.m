//
//  Singleton.m
//  Farm Application
//
//  Created by Thelen, Scott J on 2015-02-02.
//  Copyright (c) 2015 Kent Mogler. All rights reserved.
//

#import "Singleton.h"

@implementation Singleton

static Singleton *shared = NULL;

+(id)singletonData
{
    @synchronized(shared)
    {
        if ( !shared || shared == NULL )
        {
            // allocate the shared instance, because it hasn't been done yet
            shared = [[Singleton alloc] init];
        }
        
        return shared;
    }
}

-(NSString *)dataFilePath
{
    NSString *bundlePath = [[NSBundle mainBundle] pathForResource:@"PokemonApp" ofType:@"sqlite"];
    
    return bundlePath;
}

-(id)init
{
    if (self = [super init])
    {
        nPigs = false;
    }
    return self;
}

-(void) dealloc
{
    
}

@end
