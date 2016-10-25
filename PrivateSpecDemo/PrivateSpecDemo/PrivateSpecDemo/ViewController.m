//
//  ViewController.m
//  PrivateSpecDemo
//
//  Created by zhouhuanqiang on 2016/10/24.
//  Copyright © 2016年 zhouhuanqiang. All rights reserved.
//

#import "ViewController.h"
#import "MyCustomView.h"

@interface ViewController ()
    
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    
    MyCustomView *customView = [[MyCustomView alloc] initWithFrame:CGRectMake(50, 100, 300, 200) title:@"私有库"];
    
    [self.view addSubview:customView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
