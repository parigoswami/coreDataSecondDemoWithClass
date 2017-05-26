//
//  coreDataClass.h
//  coreDataSecondDemoWithClass
//
//  Created by pari on 25/05/17.
//  Copyright © 2017 pari. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <CoreData/CoreData.h>
#import "ViewController.h"


@interface coreDataClass : NSObject{
    NSArray *arrObj;
    NSFetchRequest *fetReqObj;
    NSEntityDescription *entityDescrp;
    NSManagedObject *manObj;
    NSManagedObject *objeModelTemp;
    NSManagedObjectContext *managedObjectContext;
}

-(void)callMethod:(UITextField *)tf1 andtextFieldf2ForNAme:(UITextField *)tf2;



@end
