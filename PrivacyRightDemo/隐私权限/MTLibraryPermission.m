//
//  MTLibraryPermission.m
//  PrivacyRightDemo
//
//  Created by ASSASSIN on 2020/12/9.
//

#import "MTLibraryPermission.h"
#import <AssetsLibrary/AssetsLibrary.h>
#import <Photos/PHAsset.h>

@implementation MTLibraryPermission

-(BOOL)determinePermission {
    if ([[[UIDevice currentDevice] systemVersion] floatValue] < 8.0) {
        ALAuthorizationStatus authStatus =[ALAssetsLibrary authorizationStatus];
        switch (authStatus) {
            case ALAuthorizationStatusNotDetermined: {
                return NO;
                break;
            }
            case ALAuthorizationStatusRestricted:
            case ALAuthorizationStatusDenied: {
                return NO;
                break;
            }
            case ALAuthorizationStatusAuthorized: {
                return YES;
                break;
            }
            default:
                return NO;
                break;
        }
    }else {
        PHAuthorizationStatus authStatus = [PHPhotoLibrary authorizationStatus];
        switch (authStatus) {
            case PHAuthorizationStatusNotDetermined: {
                return NO;
                break;
            }
            case PHAuthorizationStatusRestricted:
            case PHAuthorizationStatusDenied: {
                return NO;
                break;
            }
            case PHAuthorizationStatusAuthorized: {
                return YES;
                break;
            }
            default:
                return NO;
                break;
        }
    }
}

-(void)requestPermissionWithTitle:(NSString *)title description:(NSString *)description requestResult:(MTRequestResult)result {
    
    if ([[UIDevice currentDevice].systemVersion floatValue] > 8.0) {
        [PHPhotoLibrary requestAuthorization:^(PHAuthorizationStatus status) {
            NSError *error;
            BOOL granted = NO;
            if (status == PHAuthorizationStatusAuthorized) {
                granted = YES;
            }else {
                error = [NSError errorWithDomain:MTErrorDomain
                                            code:MTFailureAuthorize
                                        userInfo:@{NSLocalizedDescriptionKey : @"请求出错"}];
            }
            result(granted, error);
        }];
    }
}

@end
