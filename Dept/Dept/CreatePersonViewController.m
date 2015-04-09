//
//  FirstViewController.m
//  Dept
//
//  Created by Mikkel Müller-Hansen on 30/03/15.
//  Copyright (c) 2015 Weaveit. All rights reserved.
//

#import "CreatePersonViewController.h"
#import "Controller.h"
#import "NSString+Checks.h"

@interface CreatePersonViewController ()

@end

@implementation CreatePersonViewController

- (void)viewDidLoad {

    [super viewDidLoad];
}


- (void)createAction {
    
    NSString* name = self.nameField.text;
    double rented = [self.rentField.text doubleValue];
    
    [[Controller sharedController] createPersonWith:name and:rented];
}

/* Private methods */

- (BOOL)isValidText:(NSString*)text {
    
    if ([text isNonEmpty]) {
        
        
    }
    
    
    
}

- (BOOL)isValidNumber:(NSString*)text {
    
    
}

@end
