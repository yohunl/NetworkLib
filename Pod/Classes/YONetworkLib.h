//
//  YONetworkLib.h
//  Pods
//
//  Created by lingyohunl on 15/8/22.
//
//

#import <Foundation/Foundation.h>

@interface YONetworkLib : NSObject
- (void)getGithubReposForUser:(NSString*)user withSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure;

- (void)test ;
@end
