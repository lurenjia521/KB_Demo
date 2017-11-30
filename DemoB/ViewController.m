//
//  ViewController.m
//  DemoB
//
//  Created by kangbinbin on 2017/11/20.
//  Copyright © 2017年 kangbinbin. All rights reserved.
//

#import "ViewController.h"
#import "UIView+KBCategory.h"
#import "BlockViewController.h"
@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    self.view.backgroundColor = [UIColor whiteColor];
    
    UIView *view1 = [[UIView alloc]initWithFrame:CGRectMake(100, 100, 100, 100)];
    view1.backgroundColor = [UIColor redColor];
    [self.view addSubview:view1];
//    [view1 moveBy:CGPointMake(100, 200)];
//    [view1 sacleBy:1];
    [view1 fitInSize:CGSizeMake(70, 200)];
//    view1.kb_topLeft = CGPointMake(10, 10);
    

}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    __weak typeof(self)weakSelf = self;
    BlockViewController *second = [[BlockViewController alloc]initwithBlock:^(UIColor *color, UIColor *color1) {
        weakSelf.view.backgroundColor = color;
        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
            weakSelf.view.backgroundColor = color1;
        });
    }];
    
    
    
    [self presentViewController:second animated:YES completion:nil];
//    __weak typeof(self)weakSelf = self;
//    [second getColor:^(UIColor *color, UIColor *color1) {
//        weakSelf.view.backgroundColor = color;
//        dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(2.0 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
//            weakSelf.view.backgroundColor = color1;
//        });
//    }];
    
    // 异常的代码
//    NSLog(@"it will throw an NSException ");
//    NSArray * array = @[];
//    NSLog(@"the element is %@", array[1]);
    
    
    //跳转的代码
//    NSURL *url = [NSURL URLWithString:@"kbappA://"];
//    if ([[UIApplication sharedApplication] canOpenURL:url]) {
//         [[UIApplication sharedApplication] openURL:url];
//    }else{
//        NSLog(@"没有安装");
//    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
