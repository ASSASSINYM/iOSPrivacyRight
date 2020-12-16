//
//  MTPermissionConstant.h
//  TibetBankDemo
//
//  Created by ASSASSIN on 2020/12/9.
//

#ifndef MTPermissionConstant_h
#define MTPermissionConstant_h

#import <UIKit/UIKit.h>


#define MTErrorDomain @"MTErrorDomain"

typedef NS_ENUM(NSInteger,MTPermission) {
    MTPhotoLibrary,//相册
    MTCamera,//相机
    MTMicrophone,//麦克风
    MTLocationAllows,//始终定位
    MTLocationWhenInUse,//使用时定位
    MTCalendars,//日历
    MTReminders,//提醒事项
    MTHealth,//健康更新
    MTUserNotification,//通知
    MTContacts,//通讯录
    MTNetwork//网络
};

typedef NS_ENUM(NSInteger,MTErrorCode) {
    MTForbidPermission,//禁用
    MTFailureAuthorize,//失败
    MTUnsupportAuthorize//不支持
};

typedef NS_ENUM(NSInteger,MTPermissionAuthorizationStatus) {
    MTAuthorizationStatusNotDetermined,  // 第一次请求授权
    MTAuthorizationStatusAuthorized,     // 已经授权成功
    MTAuthorizationStatusForbid          // 非第一次请求授权
};

//回调block
typedef void(^MTRequestResult)(BOOL granted,NSError *error);

#endif /* MTPermissionConstant_h */
