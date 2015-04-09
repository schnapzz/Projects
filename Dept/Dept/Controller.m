//
//  Controller.m
//  Dept
//
//  Created by Mikkel Müller-Hansen on 30/03/15.
//  Copyright (c) 2015 Weaveit. All rights reserved.
//

#import "Controller.h"
#import "PersonManager.h"

#define kPersonsSavePath @"person_path"

@interface Controller()

@property PersonManager* pManager;

@end


@implementation Controller

static Controller* instance = nil;

+ (Controller*)sharedController { // Figure why this is wrong!
    
    if (instance == nil) {
        
        instance = [[self alloc] init];
    }
    
    return instance;
}

- (instancetype)init {
    
    self = [super init];
    
    self.pManager = [[PersonManager alloc] init];
    
    return self;
}

- (void)createPersonWith:(NSString *)name and:(double)rented {
    
    if ([self.pManager isPersonExisting:name]) {
        
        // Do something
    } else {
        
        [self.pManager createPersonWithName:name andInitialDept:rented];
    }
}

/* Load and save */

- (void)savePersons {
    
    NSData* data = [[NSData alloc] init];
    
    
    NSKeyedArchiver* archiver = [[NSKeyedArchiver alloc] init];
    [archiver encodeObject:self.pManager forKey:@"MANAGER"];
    [archiver finishEncoding];
    
}

- (void)loadPersons {
    
    
}

@end
