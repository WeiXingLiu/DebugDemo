//
//  ViewController.h
//  DebugDemo
//
//  Created by qianfeng007 on 15/8/7.
//  Copyright (c) 2015年 刘卫星. All rights reserved.
//

#import <UIKit/UIKit.h>

#ifdef DEBUG
#define NSLog(...) NSLog(__VA_ARGS__)
#else
#define NSLog(...)
#endif

#define kPrintDebug NSLog(@"%s %d",__func__,__LINE__)

@interface ViewController : UIViewController

@end

