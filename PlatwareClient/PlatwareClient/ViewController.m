//
//  ViewController.m
//  PlatwareClient
//
//  Created by Ankit Yadav on 25/09/15.
//  Copyright (c) 2015 Ankit Yadav. All rights reserved.
//

#import "ViewController.h"
#import <CoreData/CoreData.h>

@interface ViewController ()

@end

@implementation ViewController
@synthesize managedObjectContext = _managedObjectContext;
@synthesize managedObjectModel = _managedObjectModel;
@synthesize persistentStoreCoordinator = _persistentStoreCoordinator;

- (void)viewDidLoad {
    [super viewDidLoad];

    
    

    
    pwc=[[PWCConnection alloc]init];
    
    [pwc getServerResponseForUrl:@"https://itunes.apple.com/search?term=apple&media=software" withCallback:^(BOOL success, NSDictionary *responseDict, NSError *error) {
        NSLog(@"respi %@",responseDict);
        NSLog(@"%@",error);
        

}];

    NSEntityDescription *entityPerson = [NSEntityDescription entityForName:@"Configuration" inManagedObjectContext:self.managedObjectContext];
    NSManagedObject *newPerson = [[NSManagedObject alloc] initWithEntity:entityPerson insertIntoManagedObjectContext:self.managedObjectContext];
    
    // Set First and Lats Name
    [newPerson setValue:@"Bart" forKey:@"org_id"];
    [newPerson setValue:@"Jacobs" forKey:@"value"];
    [newPerson setValue:@"test" forKey:@"property"];

    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
