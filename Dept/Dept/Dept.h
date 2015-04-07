//
//  Dept.h
//  Dept
//
//  Created by Mikkel Müller-Hansen on 30/03/15.
//  Copyright (c) 2015 Weaveit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Dept : NSObject <NSCoding>

@property double rented;
@property NSDate* date;

- (id)initWithAmount:(double)rented;

@end
