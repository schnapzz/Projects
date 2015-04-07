//
//  Dept.m
//  Dept
//
//  Created by Mikkel Müller-Hansen on 30/03/15.
//  Copyright (c) 2015 Weaveit. All rights reserved.
//

#import "Dept.h"

@implementation Dept

- (id)initWithAmount:(double)rented {
    
    self = [super init];
    
    self.rented = rented;
    self.date = [[NSDate alloc] initWithTimeIntervalSinceNow:0];
    
    return self;
}

/* Private Methods */

- (void)encodeWithCoder:(NSCoder *)aCoder {
    
    [aCoder encodeInteger:self.rented forKey:@"RENTED"];
    [aCoder encodeObject:self.date forKey:@"DATE"];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    
    self = [self init];
    
    self.rented = [aDecoder decodeIntegerForKey:@"RENTED"];
    self.date = [aDecoder decodeObjectForKey:@"DATE"];
    
    return self;
}

@end
