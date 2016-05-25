//
//  ViewController.m
//  FullScreenGestureDemo
//
//  Created by peter on 16/5/25.
//  Copyright © 2016年 peter. All rights reserved.
//

#import "ViewController.h"
#import "LYMNavigationController.h"
#import "LYMTableViewController.h"

@interface ViewController ()

- (IBAction)clickMe:(id)sender;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)clickMe:(id)sender {
    LYMTableViewController *listVC = [[LYMTableViewController alloc] init];
    LYMNavigationController *nav = [[LYMNavigationController alloc] initWithRootViewController:listVC];
    [self presentViewController:nav animated:YES completion:nil];
}
@end
