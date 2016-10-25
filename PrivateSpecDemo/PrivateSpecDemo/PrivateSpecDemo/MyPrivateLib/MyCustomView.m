//
//  MyCustomView.m
//  PrivateSpecDemo
//
//  Created by zhouhuanqiang on 2016/10/24.
//  Copyright © 2016年 zhouhuanqiang. All rights reserved.
//

#import "MyCustomView.h"

@interface MyCustomView()

@property (weak, nonatomic) IBOutlet UILabel *titleLabel;
@property (weak, nonatomic) IBOutlet UIImageView *picView;

@end


@implementation MyCustomView

- (instancetype)initWithFrame:(CGRect)frame title:(NSString *)title
{
    if (self = [super initWithFrame:frame]) {
        
        NSBundle *resourceBundle = [NSBundle bundleWithPath:[[NSBundle bundleForClass:[self class]] pathForResource:@"MyPrivateLibResouce" ofType:@"bundle"]];
        
        self = [[resourceBundle loadNibNamed:@"MyCustomView"
                                              owner:self
                                            options:nil] firstObject];
        
        self.picView.image = [UIImage imageWithContentsOfFile:[resourceBundle pathForResource:@"loading@2x" ofType:@"png"]];// 有@2x的图片记得加上@2x
        
        self.titleLabel.text = title;

    }
    
    return self;
}

@end
