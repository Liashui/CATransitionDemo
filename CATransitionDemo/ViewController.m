//
//  ViewController.m
//  456
//
//  Created by Liashui on 2020/10/7.
//  Copyright © 2020年 Liashui. All rights reserved.
//

#import "ViewController.h"
#import "MyTransition.h"
#import "SecondViewController.h"


@interface ViewController () <UIViewControllerTransitioningDelegate>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}
- (IBAction)pushAction:(id)sender {
    SecondViewController *vc = [SecondViewController new];
    vc.view.backgroundColor = [UIColor redColor];
    vc.transitioningDelegate = self;
    [self presentViewController:vc animated:YES completion:nil];
}

#pragma mark - Delegate

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented presentingController:(UIViewController *)presenting sourceController:(UIViewController *)source
{
    MyTransition *transition = [[MyTransition alloc] init];
    return transition;
}
- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
