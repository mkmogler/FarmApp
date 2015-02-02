//
//  Singleton.m
//  Farm Application
//
//  Created by Thelen, Scott J on 2015-02-02.
//  Copyright (c) 2015 Kent Mogler. All rights reserved.
//

#import "Singleton.h"

@implementation singleton

static singleton *shared = NULL;

+(id)singletonData
{
    @synchronized(shared)
    {
        if ( !shared || shared == NULL )
        {
            // allocate the shared instance, because it hasn't been done yet
            shared = [[singleton alloc] init];
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
        
    }
    return self;
}

-(void) dealloc
{
    
}

@end
