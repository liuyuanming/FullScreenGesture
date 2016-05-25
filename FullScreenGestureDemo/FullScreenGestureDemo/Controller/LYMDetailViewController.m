//
//  LYMDetailViewController.m
//  FullScreenGestureDemo
//
//  Created by peter on 16/5/25.
//  Copyright © 2016年 peter. All rights reserved.
//

#import "LYMDetailViewController.h"

@interface LYMDetailViewController ()

@end

@implementation LYMDetailViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 导航标题
    self.navigationItem.title = @"试试侧滑返回";
    // 背景色
    self.view.backgroundColor = [UIColor whiteColor];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

@end
