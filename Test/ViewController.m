//
//  ViewController.m
//  Test
//
//  Created by zhaowz on 2020/8/7.
//  Copyright © 2020 wangzf. All rights reserved.
//

#import "ViewController.h"
#import "TestViewController.h"
@interface ViewController ()<TestDelegate>



@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    
    
}

- (IBAction)puthToTest:(id)sender {
    TestViewController *controller = [TestViewController new];
    controller.myBlock = ^(NSDictionary * _Nonnull dic) {
        NSLog(@"%@", dic);
    };
    controller.delegate = self;
    [self.navigationController pushViewController:controller animated:YES];
}

-(void)didClickTab:(NSInteger)line{
    NSLog(@"点击了第%ld行",line);
}

@end
