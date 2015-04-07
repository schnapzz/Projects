//
//  Person.m
//  Dept
//
//  Created by Mikkel Müller-Hansen on 30/03/15.
//  Copyright (c) 2015 Weaveit. All rights reserved.
//

#import "Person.h"

@implementation Person

- (instancetype)initWithName:(NSString *)name {
    
    self = [super init];
    
    self.name = name;
    self.depts = [[NSMutableArray alloc] init];
    
    return self;
}

- (void)addDept:(double)rented {
    
    Dept* newDept = [[Dept alloc] initWithAmount:rented];
    [self.depts addObject:newDept];
}

- (double)calculateTotalDept {
    
    for (Dept* dept in self.depts) {
        
        self.totalDept += dept.rented;
    }
    return self.totalDept;
}

/* Private Methods */

- (void)encodeWithCoder:(NSCoder *)coder {

    [coder encodeObject:self.name forKey:@"NAME"];
    [coder encodeObject:self.depts forKey:@"DEPTS"];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    
    self = [self init];
    
    self.name = [aDecoder decodeObjectForKey:@"NAME"];
    self.depts = [aDecoder decodeObjectForKey:@"DEPTS"];
    
    return self;
}

@end
