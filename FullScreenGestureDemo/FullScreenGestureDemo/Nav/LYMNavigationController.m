//
//  LYMNavigationController.m
//  FullScreenGestureDemo
//
//  Created by peter on 16/5/25.
//  Copyright © 2016年 peter. All rights reserved.
//

#import "LYMNavigationController.h"

@interface LYMNavigationController ()

@end

@implementation LYMNavigationController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    // 查看系统侧滑手势结构
    /**
     <UIScreenEdgePanGestureRecognizer: 0x7ff0d162f020; state = Possible; delaysTouchesBegan = YES; view = <UILayoutContainerView 0x7ff0d162ec70>; target= <(action=handleNavigationTransition:, target=<_UINavigationInteractiveTransition 0x7ff0d162da00>)>>
     手势类型：UIScreenEdgePanGestureRecognizer
     target：_UINavigationInteractiveTransition
     action：handleNavigationTransition
     */
    //    NSLog(@"%@", self.interactivePopGestureRecognizer);
    
    // 获取系统侧滑手势代理
    id target = self.interactivePopGestureRecognizer.delegate;
    
    // 创建全局侧滑手势
    UIPanGestureRecognizer *panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:target action:@selector(handleNavigationTransition:)];
    [self.view addGestureRecognizer:panGestureRecognizer];
    
    // 禁止系统侧滑手势
    self.interactivePopGestureRecognizer.enabled = NO;
}

// 什么时候调用：每次触发手势之前都会询问下代理，是否触发。
// 作用：拦截手势触发
- (BOOL)gestureRecognizerShouldBegin:(UIGestureRecognizer *)gestureRecognizer
{
    // 注意：只有非根控制器才有滑动返回功能，根控制器没有。
    // 判断导航控制器是否只有一个子控制器，如果只有一个子控制器，肯定是根控制器
    if (self.childViewControllers.count == 1) {
        // 表示用户在根控制器界面，就不需要触发滑动手势，
        return NO;
    }
    return YES;
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
