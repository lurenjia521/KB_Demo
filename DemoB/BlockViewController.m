//
//  BlockViewController.m
//  DemoB
//
//  Created by kangbinbin on 2017/11/29.
//  Copyright © 2017年 kangbinbin. All rights reserved.
//

#import "BlockViewController.h"

@interface BlockViewController ()
/** <#type#> */
@property (copy, nonatomic) goback goback1;

@end

@implementation BlockViewController

-(instancetype)initwithBlock:(goback)gobackBlock{
    if (self == [super init]) {
        self.goback1 = gobackBlock;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.view.backgroundColor = [UIColor whiteColor];
    
}
-(void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event{
    if (self.goback1) {
        self.goback1([UIColor grayColor], [UIColor yellowColor]);
    }
    
    [self dismissViewControllerAnimated:YES completion:nil];
    
}
//-(void)
-(void)getColor:(goback)gobackBlock{
    self.goback1([UIColor whiteColor], [UIColor redColor]);
    
    gobackBlock([UIColor darkGrayColor],[UIColor yellowColor]);
    
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
