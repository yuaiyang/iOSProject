//
//  LMJDrawStrPicsViewController.m
//  PLMMPRJK
//
//  Created by HuXuPeng on 2017/10/24.
//  Copyright © 2017年 GoMePrjk. All rights reserved.
//

#import "LMJDrawStrPicsViewController.h"

@interface LMJDrawStrPicsViewController ()

@end

@implementation LMJDrawStrPicsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self redView];
}


- (Class)drawViewClass
{
    return [DrawStrPicsView class];
}

@end


@implementation DrawStrPicsView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    
    // 超出裁剪区域的内容全部裁剪掉
    // 注意：裁剪必须放在绘制之前
//    UIRectClip(CGRectMake(0, 0, 50, 50));
    
    UIImage *image = [UIImage imageNamed:@"小新.jpg"];
    
    // 默认绘制的内容尺寸跟图片尺寸一样大
    //    [image drawAtPoint:CGPointZero];
    
    //    [image drawInRect:rect];
    // 绘图
    [image drawAsPatternInRect:rect];
    
    [self attrText];
    
}

- (void)awakeFromNib{
    [super awakeFromNib];

}

- (void)drawText
{
    // 绘制文字
    
    NSString *str = @"asfdsfsdfasfdsfsdfasfdsfsdfasfdsfsdfasfdsfsdfasfdsfsdfasfdsfsdfasfdsfsdfasfdsfsdfasfdsfsdfasfdsfsdfasfdsfsdfasfdsfsdf";
    // 不会换行
    //    [str drawAtPoint:CGPointZero withAttributes:nil];
    
    [str drawInRect:self.bounds withAttributes:nil];
    
}
- (void)attrText
{
    
    // 绘制文字
    
    NSString *str = @"asfdsfsdf";
    
    
    // 文字的起点
    // Attributes：文本属性
    
    NSMutableDictionary *textDict = [NSMutableDictionary dictionary];
    
    // 设置文字颜色
    textDict[NSForegroundColorAttributeName] = [UIColor redColor];
    
    // 设置文字字体
    textDict[NSFontAttributeName] = [UIFont systemFontOfSize:30];
    
    // 设置文字的空心颜色和宽度
    
    textDict[NSStrokeWidthAttributeName] = @3;
    
    textDict[NSStrokeColorAttributeName] = [UIColor yellowColor];
    
    // 创建阴影对象
    NSShadow *shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor greenColor];
    shadow.shadowOffset = CGSizeMake(4, 4);
    shadow.shadowBlurRadius = 3;
    textDict[NSShadowAttributeName] = shadow;
    
    // 富文本:给普通的文字添加颜色，字体大小
    [str drawAtPoint:CGPointZero withAttributes:textDict];
}


@end
