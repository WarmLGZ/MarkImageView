//
//  GZIdentificationImageView.m
//
//
//  Created by 李国志 on 2020/4/22.
//  Copyright © 2020 . All rights reserved.
//

#import "GZIdentificationImageView.h"

@implementation GZIdentificationImageView

- (instancetype)initWithFrame:(CGRect)frame {
    if (self = [super initWithFrame:frame]) {
        [self configureUI];
    }
    return self;
}

#pragma mark - configureUI

- (void)configureUI {
    self.layer.masksToBounds = YES;
    self.clipsToBounds = YES;
    
    self.bottomView = [[UIView alloc] initWithFrame:CGRectMake(0, CGRectGetHeight(self.frame) * 2/3, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame) * 1/3)];
    self.bottomView.backgroundColor = [UIColor colorWithRed:96 / 255.0 green:167 / 255.0 blue:255 / 255.0 alpha:0.94];
    self.bottomView.hidden = YES;
    [self addSubview:self.bottomView];
    
    UILabel *tipLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, CGRectGetWidth(self.frame), CGRectGetHeight(self.frame) * 1/3)];
    self.tipLabel = tipLabel;
    tipLabel.text = @"有意向";
    tipLabel.textColor = [UIColor whiteColor];
    tipLabel.font = [UIFont systemFontOfSize:9.0];
    tipLabel.textAlignment = NSTextAlignmentCenter;
    tipLabel.center = CGPointMake(CGRectGetWidth(self.bottomView.frame) / 2, CGRectGetHeight(self.bottomView.frame) / 2 - 1);
    [self.bottomView addSubview:tipLabel];
}

- (void)showTipView {
    self.bottomView.hidden = NO;
}

- (void)hiddenTipView {
    self.bottomView.hidden = YES;
}

@end
