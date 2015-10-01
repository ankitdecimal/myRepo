//
//  ViewController.h
//  PlatwareClient
//
//  Created by Ankit Yadav on 25/09/15.
//  Copyright (c) 2015 Ankit Yadav. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "PWCConnection.h"
@interface ViewController : UIViewController
{
    PWCConnection *pwc;
}

@property (readonly, strong, nonatomic) NSManagedObjectContext *managedObjectContext;
@property (readonly, strong, nonatomic) NSManagedObjectModel *managedObjectModel;
@property (readonly, strong, nonatomic) NSPersistentStoreCoordinator *persistentStoreCoordinator;


@end

