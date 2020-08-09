//
//  TestViewController.h
//  Test
//
//  Created by zhaowz on 2020/8/8.
//  Copyright © 2020 wangzf. All rights reserved.
//

#import <UIKit/UIKit.h>



NS_ASSUME_NONNULL_BEGIN
@protocol TestDelegate <NSObject>

- (void)didClickTab:(NSInteger )line;

@end

@interface TestViewController : UIViewController

@property (nonatomic, copy) void(^myBlock)(NSDictionary *dic);
@property (nonatomic, weak) id<TestDelegate> delegate;

@end

NS_ASSUME_NONNULL_END
