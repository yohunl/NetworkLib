//
//  YOViewController.m
//  NetworkLib
//
//  Created by yohunl on 08/22/2015.
//  Copyright (c) 2015 yohunl. All rights reserved.
//

#import "YOViewController.h"
//#import <NetworkLib/YONetworkLib.h>
#import "YONetworkLib.h"
@interface YOViewController ()

@end

@implementation YOViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    YONetworkLib * lib = [YONetworkLib new];
    [lib getGithubReposForUser:@"yohunl" withSuccess:^(id responseObject) {
        NSLog(@"response = %@",responseObject);
    } failure:^(NSError *error) {
        NSLog(@"error = %@",error);
    }];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
