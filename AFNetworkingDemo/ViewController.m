//
//  ViewController.m
//  AFNetworkingDemo
//
//  Created by Yifang Zhang on 11/25/15.
//  Copyright © 2015 Yifang. All rights reserved.
//

#import "ViewController.h"
#import "AFNetworking.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSDictionary *parameters = @{@"username": @"wind", @"password": @"haha"};
    
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    [manager GET:@"http://pixelworld.herokuapp.com/hello" parameters:nil success:^(AFHTTPRequestOperation *operation, id responseObject) {
        
        
        NSString *string = [[NSString alloc] initWithData:responseObject encoding:NSUTF8StringEncoding];
        NSLog(@"JSON: %@", string);
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
