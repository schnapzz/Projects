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
    
    if ([self isValidText:self.nameField.text] && [self isValidNumber:self.rentField.text]) {
        
        NSString* name = self.nameField.text;
        double rented = [self.rentField.text doubleValue];
        
        [[Controller sharedController] createPersonWith:name and:rented];
        
    } else {
        
        NSLog(@"Couldn't create a person.");
    }
}

/* Private methods */

- (BOOL)isValidText:(NSString*)text {
    
    if ([text isNonEmpty]) {
        
        return YES;
    }
    return NO;
}

- (BOOL)isValidNumber:(NSString*)text {
    
    NSString* pattern = @"^(?:|0|[1-9]\\d*)(?:\\.\\d*)?$";
    NSRegularExpressionOptions regexOption = NSRegularExpressionCaseInsensitive;
    NSRegularExpression* regex = [NSRegularExpression regularExpressionWithPattern:pattern options:regexOption error:nil];

    int matchingNumbers = [regex numberOfMatchesInString:text options:0 range:NSMakeRange(0, text.length)];
    
//    NSCharacterSet *alphaNums = [NSCharacterSet decimalDigitCharacterSet];
//    NSCharacterSet *inStringSet = [NSCharacterSet characterSetWithCharactersInString:myInputField.text];

    if ([text isNonEmpty] && matchingNumbers == text.length) {
        
        return YES;
    }
    return NO;
}

@end
