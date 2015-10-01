//
//  PWCConnection.m
//  PlatwareClient
//
//  Created by Ankit Yadav on 25/09/15.
//  Copyright (c) 2015 Ankit Yadav. All rights reserved.
//

#import "PWCConnection.h"

@implementation PWCConnection
- (void)getServerResponseForUrl:(NSString *)urlString withCallback:(void (^)(BOOL success, NSDictionary *responseDict, NSError *error))callback;
{
    
    
    NSURLSession *session = [NSURLSession sharedSession];
    NSURLSessionDataTask *dataTask = [session dataTaskWithURL:[NSURL URLWithString:urlString] completionHandler:^(NSData *data, NSURLResponse *response, NSError *error) {
        NSDictionary *json = [NSJSONSerialization JSONObjectWithData:data options:0 error:nil];
//        NSLog(@"%@", json);
        
        callback(YES, json, error);
        
    }];
    
    [dataTask resume];
    
    
}
@end
