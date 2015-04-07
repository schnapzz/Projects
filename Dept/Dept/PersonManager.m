//
//  PersonManager.m
//  Dept
//
//  Created by Mikkel Müller-Hansen on 02/04/15.
//  Copyright (c) 2015 Weaveit. All rights reserved.
//

#import "PersonManager.h"
#import "Person.h"

@interface PersonManager()

@property NSMutableArray* persons;

@end

@implementation PersonManager

- (instancetype)init {
    
    self = [super init];
    
    self.persons = [[NSMutableArray alloc] init];
    
    
    [self.persons writeToFile:@"" atomically:YES];

    return self;
}

// Creates a new person object with a name and dept.
- (void)createPersonWithName:(NSString *)name andInitialDept:(double)initDept {
    
    // Create an initial person
    Person* person = [[Person alloc] initWithName:name];
    [person addDept:initDept];
    
    // Calculating total dept
    [self calculateTotalDeptOfPerson:person];
    
    // Adds the new person to the list of persons
    [self.persons addObject:person];
}


- (BOOL)isPersonExisting:(NSString *)name {
    
    for (Person* person in self.persons) {
        
        if ([person.name isEqualToString:name]) {
            
            return true;
        }
    }
    return false;
}


/* Private Methods */

- (void)calculateTotalDeptOfPerson:(Person*)person {
    
    for (Dept* dept in person.depts) {
        
        person.totalDept += dept.rented;
    }
}

- (void)encodeWithCoder:(NSCoder *)aCoder {
    
    [aCoder encodeObject:self.persons forKey:@"PERSONS"];
}

- (id)initWithCoder:(NSCoder *)aDecoder {
    
    self = [self init];
    
    self.persons = [aDecoder decodeObjectForKey:@"PERSONS"];
    
    return self;
}

@end
