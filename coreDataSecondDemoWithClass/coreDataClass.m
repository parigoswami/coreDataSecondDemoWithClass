//
//  coreDataClass.m
//  coreDataSecondDemoWithClass
//
//  Created by pari on 25/05/17.
//  Copyright © 2017 pari. All rights reserved.
//

#import "coreDataClass.h"
#import <CoreData/CoreData.h>
#import "AppDelegate.h"
#import <UIKit/UIKit.h>


@implementation coreDataClass{
    
}

-(void)callMethod:(UITextField *)tf1 andtextFieldf2ForNAme:(UITextField *)tf2{
    
    
    NSLog(@"you are in call method");
    AppDelegate *appdelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    //appdelegate is songleton class
    managedObjectContext = appdelegate.persistentContainer.viewContext;
    NSLog(@"%@",managedObjectContext);
    
    entityDescrp=[NSEntityDescription entityForName:@"Student" inManagedObjectContext:managedObjectContext];
    manObj=[[NSManagedObject alloc]initWithEntity:entityDescrp insertIntoManagedObjectContext:managedObjectContext];
    int userId=[tf1.text intValue];
    [manObj setValue:[NSNumber numberWithInteger:userId] forKey:@"id"];
    [manObj setValue:tf2.text forKey:@"name"];
    NSError *errorObj;
    [managedObjectContext save:&errorObj];
    NSLog(@"%@",errorObj.localizedDescription);
    fetReqObj=[[NSFetchRequest alloc]initWithEntityName:@"Student"];
    arrObj=[managedObjectContext executeFetchRequest:fetReqObj error:&errorObj];

    NSLog(@"%lu ________   %@",(unsigned long)arrObj.count,arrObj);
    
    for (int i=0; i<[arrObj count]; i++) {
        objeModelTemp=[arrObj objectAtIndex:i];
        NSLog(@"%@",[objeModelTemp valueForKey:@"id"]);
        NSLog(@"%@",[objeModelTemp valueForKey:@"name"]);
        strx=[objeModelTemp valueForKey:@"name"];
        NSLog(@"____STring value is %@ ",strx);
        [_mutArr addObject:strx];
        strx=NULL;
        
    }
    NSLog(@"___VALue of array is %lu ___",(unsigned long)_mutArr.count
          );
}

//-(void)showMethod{
//            for (int i=0; i<[arrObj count]; i++) {
//                objeModelTemp=[arrObj objectAtIndex:i];
//                NSLog(@"%@",[objeModelTemp valueForKey:@"id"]);
//                NSLog(@"%@",[objeModelTemp valueForKey:@"name"]);
//            }
//    
//}

@end
