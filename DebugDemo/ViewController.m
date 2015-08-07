//
//  ViewController.m
//  DebugDemo
//
//  Created by qianfeng007 on 15/8/7.
//  Copyright (c) 2015年 刘卫星. All rights reserved.
//

#import "ViewController.h"



@interface ViewController ()
{
    NSMutableArray*_dataAry;
}
@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    kPrintDebug;
    _dataAry=[[NSMutableArray arrayWithObjects:@"1",@"2",@"3",nil] retain] ;
    //NSArray*mary=[[NSArray alloc]initWithObjects:@"ddd",nil];
   // NSLog(@"%@",mary[0]);
    
    [self createButtnon];
}
-(void)createButtnon{
    UIButton*button=[UIButton buttonWithType:UIButtonTypeSystem];
    button.frame=CGRectMake(100, 100, 100, 40);
    [button setTitle:@"button" forState:UIControlStateNormal];
    [button addTarget:self action:@selector(btnClick:) forControlEvents:UIControlEventTouchUpInside];
    
    [self.view addSubview:button];
}
-(void)btnClick:(UIButton*)buton{
    NSLog(@"%@",_dataAry[0]);
    for (int i=0; i<10; i++) {
        NSLog(@"%d",i);
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
