//
//  MTBasePermission.h
//  TibetBankDemo
//
//  Created by ASSASSIN on 2020/12/9.
//

#import <Foundation/Foundation.h>
#import "MTPermissionConstant.h"

NS_ASSUME_NONNULL_BEGIN

@interface MTBasePermission : NSObject

/// 判断权限是否存在
-(BOOL)determinePermission;

/// 请求权限
/// @param title 标题
/// @param description 描述
/// @param result 请求权限结果
-(void)requestPermissionWithTitle:(NSString *)title
                      description:(NSString *)description
                    requestResult:(MTRequestResult)result;

@end

NS_ASSUME_NONNULL_END
