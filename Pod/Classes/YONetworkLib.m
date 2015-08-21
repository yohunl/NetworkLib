//
//  YONetworkLib.m
//  Pods
//
//  Created by lingyohunl on 15/8/22.
//
//

#import "YONetworkLib.h"
#import "AFNetworking.h"
@implementation YONetworkLib
- (void)getGithubReposForUser:(NSString*)user withSuccess:(void (^)(id responseObject))success failure:(void (^)(NSError *error))failure
{
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    [manager GET:[NSString stringWithFormat:@"https://api.github.com/users/%@/repos", user] parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        success(responseObject);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        failure(error);
    }];
}

- (void)test  {
    [self getGithubReposForUser:@"yohunl" withSuccess:^(id responseObject) {
        NSLog(@"response = %@",responseObject);
    } failure:^(NSError *error) {
        NSLog(@"error = %@",error);
    }];
}
@end
