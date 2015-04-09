//
//  NSString+Checks.m
//  Dept
//
//  Created by Mikkel Müller-Hansen on 09/04/15.
//  Copyright (c) 2015 Weaveit. All rights reserved.
//

#import "NSString+Checks.h"

@implementation NSString (Checks)

- (BOOL)isNonEmpty {
    
    return self != nil ? YES : NO;
}

@end
