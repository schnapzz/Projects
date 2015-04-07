//
//  FirstViewController.h
//  Dept
//
//  Created by Mikkel Müller-Hansen on 30/03/15.
//  Copyright (c) 2015 Weaveit. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CreatePersonViewController : UIViewController

@property (weak) IBOutlet UITextField* nameField;
@property (weak) IBOutlet UITextField* rentField;


- (IBAction)createAction;

@end

