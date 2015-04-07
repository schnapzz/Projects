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
@property id controller;

@end


@implementation Controller

- (instancetype)init {
    
    self = [super init];
    
    self.pManager = [[PersonManager alloc] init];
    
    return self;
}

- (void)createPersonWith:(NSString *)name and:(double)rented {
    
    
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
