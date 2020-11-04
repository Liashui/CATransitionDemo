//
//  MyTransition.m
//  456
//
//  Created by Liashui on 2020/10/25.
//  Copyright © 2020年 Liashui. All rights reserved.
//

#import "MyTransition.h"
#import "ViewController.h"
#import "SecondViewController.h"


@implementation MyTransition

- (NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.6;
}

- (void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    
    ViewController *fromVC = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    SecondViewController *toVC = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    // 转场视图容器
    UIView *containerView = [transitionContext containerView];
    
    
    toVC.view.frame = CGRectMake([UIScreen mainScreen].bounds.size.width/2, [UIScreen mainScreen].bounds.size.height/2, 0, 0);
    toVC.view.alpha = 0;
    [containerView addSubview:toVC.view];
    
    
    [UIView animateWithDuration:[self transitionDuration:transitionContext] animations:^{
        toVC.view.frame = [transitionContext finalFrameForViewController:toVC];
        toVC.view.alpha = 1;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:!transitionContext.transitionWasCancelled];
    }];
    
}
@end
