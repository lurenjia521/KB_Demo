//
//  UIView+KBCategory.h
//  DemoB
//
//  Created by kangbinbin on 2017/11/28.
//  Copyright © 2017年 kangbinbin. All rights reserved.
//

#import <UIKit/UIKit.h>
CGPoint CGRectGetCenter(CGRect rect);
CGRect  CGRectMoveToCenter(CGRect rect,CGPoint center);

@interface UIView (KBCategory)

@property (nonatomic,assign) CGFloat kb_x;
@property (nonatomic,assign) CGFloat kb_y;
@property (nonatomic,assign) CGFloat kb_width;
@property (nonatomic,assign) CGFloat kb_height;
@property (nonatomic,assign) CGSize  kb_size;
@property (nonatomic,assign) CGFloat kb_centerX;
@property (nonatomic,assign) CGFloat kb_centerY;

@property (nonatomic,assign) CGFloat kb_top;
@property (nonatomic,assign) CGFloat kb_bottom;
@property (nonatomic,assign) CGFloat kb_left;
@property (nonatomic,assign) CGFloat kb_right;
@property (readonly) CGPoint kb_topLeft;
@property (readonly) CGPoint kb_topRight;
@property (readonly) CGPoint kb_bottomLeft;
@property (readonly) CGPoint kb_bottomRight;

-(void) moveBy: (CGPoint) delta;
-(void) sacleBy: (CGFloat) sacleFactor;
-(void) fitInSize: (CGSize) aSize;

@end
