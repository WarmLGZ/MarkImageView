//
//  GZIdentificationImageView.h
//
//
//  Created by 李国志 on 2020/4/22.
//  Copyright © 2020 . All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface GZIdentificationImageView : UIImageView

@property (nonatomic, strong) UIView *bottomView;
@property (nonatomic, strong) UILabel *tipLabel;

- (void)showTipView;
- (void)hiddenTipView;

@end

NS_ASSUME_NONNULL_END
