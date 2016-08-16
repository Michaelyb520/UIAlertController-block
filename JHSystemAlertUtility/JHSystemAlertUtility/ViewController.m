//
//  ViewController.m
//  JHSystemAlertUtility
//
//  Created by 流痕 on 16/8/16.
//  Copyright © 2016年 FLZC. All rights reserved.
//

#import "ViewController.h"
#import "JHSysAlertUtil.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    /** 单按键 */
    [JHSysAlertUtil presentAlertViewWithTitle:@"标题" message:@"This a message" confirmTitle:@"确定" handler:^{
        NSLog(@"@@  This is just a log O(∩_∩)O~ @@");
    }];
    
//    /** 双按键 */
//    [JHSysAlertUtil presentAlertViewWithTitle:@"标题" message:@"This is message" cancelTitle:@"取消" defaultTitle:@"确认" distinct: YES cancel:^{
//        NSLog(@"@@~ 取消 ~@@");
//    } confirm:^{
//        NSLog(@"@@~ 确认 ~@@");
//    }];
//    
//    /** Alert  任意多个按键 返回选中的 buttonIndex 和 buttonTitle */
//    [JHSysAlertUtil presentAlertWithTitle:@"标题" message:@"This is message" actionTitles:@[@"first", @"second", @"third"] preferredStyle:UIAlertControllerStyleActionSheet handler:^(NSUInteger buttonIndex, NSString *buttonTitle) {
//        NSLog(@"@@~~ : %lu, %@", (unsigned long)buttonIndex, buttonTitle);
//    }];
    

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
