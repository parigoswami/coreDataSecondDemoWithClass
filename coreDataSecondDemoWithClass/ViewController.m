//
//  ViewController.m
//  coreDataSecondDemoWithClass
//
//  Created by pari on 25/05/17.
//  Copyright © 2017 pari. All rights reserved.
//

#import "ViewController.h"
#import "coreDataClass.h"


@interface ViewController (){
    
}
@end

@implementation ViewController
@synthesize myTexxtField,idLabel;
- (void)viewDidLoad {
    [super viewDidLoad];
    
    // Do any additional setup after loading the view, typically from a nib.
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


- (IBAction)tapOnAddButton:(id)sender {
    coreDataClass *crdtclassObj=[[coreDataClass alloc]init];
    [crdtclassObj callMethod:idLabel andtextFieldf2ForNAme:myTexxtField];
    
    
}
@end
