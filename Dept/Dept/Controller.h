//
//  Controller.h
//  Dept
//
//  Created by Mikkel Müller-Hansen on 30/03/15.
//  Copyright (c) 2015 Weaveit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Controller : NSObject

+ (Controller*)sharedController;

- (void)createPersonWith:(NSString*)name and:(double)rented;

@end
