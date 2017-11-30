//
//  BlockViewController.h
//  DemoB
//
//  Created by kangbinbin on 2017/11/29.
//  Copyright © 2017年 kangbinbin. All rights reserved.
//

#import <UIKit/UIKit.h>
typedef void(^goback) (UIColor *color, UIColor *color1);

@interface BlockViewController : UIViewController

-(instancetype)initwithBlock:(goback)gobackBlock;

-(void)getColor:(goback)gobackBlock;

@end
