//
//  ViewController.m
//  AutoLayoutDemo
//
//  Created by dev on 15/12/2.
//  Copyright © 2015年 thomas. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UITextField *centerTextView;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;
@property (weak, nonatomic) IBOutlet UIButton *left1Button;
@property (weak, nonatomic) IBOutlet UITextField *center1TextField;
@property (weak, nonatomic) IBOutlet UIButton *right1Button;

@property (assign, nonatomic) BOOL isLoading;

@end

@implementation ViewController

#pragma mark - LifeCycle

- (void)viewDidLoad {
    [super viewDidLoad];
}

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    /*
     *
     第一种: 添加约束思路
     leftButton: left, bottom约束固定, 宽度与屏幕宽度等比例, 高度再和自身的宽度等比例
     rightButton: right,设置距离leftButton居中约束,宽度与屏幕宽度等比例, 高度再和自身的宽度等比例
     centerTextField: left , right ,固定(距离leftButton,rightButton的边距)(bottom固定最好改为距离leftButton 的居中约束)
     
     第二种: 添加约束思路
     leftButton: left, top 固定, 高度与屏幕高度等比例, 宽度和自身高度等比例
     rightButton: right固定.设置距离leftButton居中约束, 高度与leftButton等高
     centerTextFielf: left, right 固定, 设置距离leftButton居中约束, 高度与leftButton等高.
     *
     */
}

- (void)viewDidLayoutSubviews {
    [super viewDidLayoutSubviews];
    if (!self.isLoading) {
        NSLog(@"leftViewFrame::::::%@", NSStringFromCGRect(self.leftButton.frame));
        NSLog(@"centerViewFrame::::::%@", NSStringFromCGRect(self.centerTextView.frame));
        NSLog(@"rightViewFrame::::::%@", NSStringFromCGRect(self.rightButton.frame));
        NSLog(@"___________________________________________");
        NSLog(@"left1ViewFrame::::::%@", NSStringFromCGRect(self.left1Button.frame));
        NSLog(@"center1ViewFrame::::::%@", NSStringFromCGRect(self.center1TextField.frame));
        NSLog(@"right1ViewFrame::::::%@", NSStringFromCGRect(self.right1Button.frame));
        self.isLoading = YES;
    }
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
}

@end
