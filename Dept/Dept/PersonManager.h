//
//  PersonManager.h
//  Dept
//
//  Created by Mikkel Müller-Hansen on 02/04/15.
//  Copyright (c) 2015 Weaveit. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PersonManager : NSObject <NSCoding>

- (void)createPersonWithName:(NSString*)name andInitialDept:(double)initDept;

@end
