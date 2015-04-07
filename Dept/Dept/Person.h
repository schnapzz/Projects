//
//  Person.h
//  Dept
//
//  Created by Mikkel Müller-Hansen on 30/03/15.
//  Copyright (c) 2015 Weaveit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Dept.h"

@interface Person : NSObject <NSCoding>

@property NSString* name;
@property NSMutableArray* depts;
@property double totalDept;

- (instancetype)initWithName:(NSString*)name;
- (void)addDept:(double)rented;
- (double)calculateTotalDept;

@end
