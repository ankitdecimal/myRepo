//
//  PWCConnection.h
//  PlatwareClient
//
//  Created by Ankit Yadav on 25/09/15.
//  Copyright (c) 2015 Ankit Yadav. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface PWCConnection : NSObject
- (void)getServerResponseForUrl:(NSString *)urlString withCallback:(void (^)(BOOL success, NSDictionary *responseDict, NSError *error))callback;

@end
