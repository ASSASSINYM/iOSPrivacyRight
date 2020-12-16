//
//  MTAuthorizationManager.h
//  PrivacyRightDemo
//
//  Created by ASSASSIN on 2020/12/9.
//

#import <Foundation/Foundation.h>
#import "MTPermissionConstant.h"

NS_ASSUME_NONNULL_BEGIN

@interface MTAuthorizationManager : NSObject

/// 初始化
+(instancetype)manager;

/// 判断权限是否存在
/// @param permission 权限类型
-(BOOL)determinePermission:(MTPermission)permission;

/// 检测权限是否存在，不存在则请求权限
/// @param permission 权限类型
/// @param title 标题
/// @param description 描述
/// @param result 请求结果
-(void)requestPermission:(MTPermission)permission
                   title:(NSString *)title
             description:(NSString *)description
           requestResult:(MTRequestResult)result;


/// 当前活动视图
-(UIViewController *)currentViewController;

@end

NS_ASSUME_NONNULL_END
