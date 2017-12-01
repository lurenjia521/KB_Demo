//
//  UIView+KBCategory.m
//  DemoB
//
//  Created by kangbinbin on 2017/11/28.
//  Copyright © 2017年 kangbinbin. All rights reserved.
//

#import "UIView+KBCategory.h"

@implementation UIView (KBCategory)

-(void)setKb_x:(CGFloat)kb_x{
    CGRect frame = self.frame;
    frame.origin.x = kb_x;
    self.frame = frame;
}
-(void)setKb_y:(CGFloat)kb_y{
    CGRect frame = self.frame;
    frame.origin.y = kb_y;
    self.frame = frame;
}
-(void)setKb_width:(CGFloat)kb_width{
    CGRect frame = self.frame;
    frame.size.width = kb_width;
    self.frame = frame;
}
-(void)setKb_height:(CGFloat)kb_height{
    CGRect frame = self.frame;
    frame.size.height = kb_height;
    self.frame = frame;
}
-(void)setKb_size:(CGSize)kb_size{
    CGRect frame = self.frame;
    frame.size = kb_size;
    self.frame = frame;
}

-(void)setKb_centerX:(CGFloat)kb_centerX{
    CGPoint center = self.center;
    center.x = kb_centerX;
    self.center = center;
}
-(void)setKb_centerY:(CGFloat)kb_centerY{
    CGPoint center = self.center;
    center.y = kb_centerY;
    self.center = center;
}

-(CGFloat)kb_x{
    return self.frame.origin.x;
}
-(CGFloat)kb_y{
    return self.frame.origin.y;
}
-(CGFloat)kb_width{
    return self.frame.size.width;
}
-(CGFloat)kb_height{
    return self.frame.size.height;
}
-(CGFloat)kb_centerY{
    return self.center.y;
}
-(CGFloat)kb_centerX{
    return self.center.x;
}
-(CGSize)kb_size{
    return self.frame.size;
}

-(CGFloat)kb_top{
    return self.frame.origin.y;
}
-(void)setKb_top:(CGFloat)kb_top{
    CGRect frame = self.frame;
    frame.origin.y = kb_top;
    self.frame = frame;
}

-(CGFloat)kb_bottom{
    return  self.frame.origin.y + self.frame.size.height;
}
-(void)setKb_bottom:(CGFloat)kb_bottom{
    CGRect frame = self.frame;
    frame.origin.y = kb_bottom - self.frame.size.height;
    self.frame = frame;
}

-(CGFloat)kb_left{
    return self.frame.origin.x;
}
-(void)setKb_left:(CGFloat)kb_left{
    CGRect frame = self.frame;
    frame.origin.x = kb_left;
    self.frame = frame;
}

-(CGFloat)kb_right {
    return self.frame.origin.x + self.frame.size.width;
}
-(void)setKb_right:(CGFloat)kb_right{
    CGFloat delta =  kb_right - (self.frame.origin.x + self.frame.size.width);
    CGRect frame = self.frame;
    frame.origin.x += delta;
    self.frame = frame;
}


//只读文件
-(CGPoint)kb_topLeft{
    CGFloat x = self.frame.origin.x;
    CGFloat y = self.frame.origin.y ;
    return CGPointMake(x, y);
}

-(CGPoint)kb_topRight{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat  y = self.frame.origin.y;
    return CGPointMake(x, y);
}
-(CGPoint)kb_bottomLeft{
    CGFloat x = self.frame.origin.x;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    return CGPointMake(x, y);
}
-(CGPoint)kb_bottomRight{
    CGFloat x = self.frame.origin.x + self.frame.size.width;
    CGFloat y = self.frame.origin.y + self.frame.size.height;
    return CGPointMake(x, y);
}

//中心移动
-(void)moveBy:(CGPoint)delta{
    CGPoint newcenter = self.center;
    newcenter.x += delta.x;
    newcenter.y += delta.y;
    self.center = newcenter;
}
//等比例缩放
-(void)sacleBy:(CGFloat)scaleFactor{
    CGRect frame = self.frame;
    frame.size.width *= scaleFactor;
    frame.size.height *= scaleFactor;
    self.frame = frame;
}
//在原有的尺寸是最大范围内缩放
-(void)fitInSize:(CGSize)aSize{
    
    CGFloat scale;
    CGRect newframe = self.frame;
    if (newframe.size.height && (newframe.size.height > aSize.height)) {
        scale = aSize.height / newframe.size.height;
        newframe.size.width *= scale;
        newframe.size.height *= scale;
    }
    if (newframe.size.width && (newframe.size.width >= aSize.width)) {
        scale = aSize.width / newframe.size.width;
        newframe.size.width *= scale;
        newframe.size.height *= scale;
    }
    
    self.frame = newframe;
    
}

@end
