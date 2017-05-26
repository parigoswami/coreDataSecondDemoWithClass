//
//  ViewController.h
//  coreDataSecondDemoWithClass
//
//  Created by pari on 25/05/17.
//  Copyright © 2017 pari. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "coreDataClass.h"


@interface ViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *idLabel;
@property (weak, nonatomic) IBOutlet UITextField *myTexxtField;
- (IBAction)tapOnAddButton:(id)sender;


@end

