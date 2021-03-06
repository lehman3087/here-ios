//
//  HEREConstant.h
//  here clone
//
//  Created by Joseph Cheung on 11/8/14.
//  Copyright (c) 2014 Reque.st. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface HEREConstant : NSObject

#pragma mark - Beacon Class
extern NSString *const kHEREBeaconClassKey;
extern NSString *const kHEREBeaconUserKey;
extern NSString *const kHEREBeaconUUIDKey;
extern NSString *const kHEREBeaconMajorKey;
extern NSString *const kHEREBeaconMinorKey;
extern NSString *const kHEREBeaconNameKey;
extern NSString *const kHEREBeaconParseIdKey;
extern NSString *const kHEREBeaconTriggeredKey;

#pragma mark - Audio Class
extern NSString *const kHEREAudioClassKey;
extern NSString *const kHEREAudioUserKey;
extern NSString *const kHEREAudioBeaconKey;
extern NSString *const kHEREAudioFileKey;
extern NSString *const kHEREAudioIsReadKey;

#pragma mark - API
extern NSString *const kHEREAPICreatedAtKey;
extern NSString *const kHEREAPIDataKey;
extern NSString *const kHEREAPIIdKey;

#pragma mark - Location API
extern NSString *const kHEREAPILocationsUrl;
extern NSString *const kHEREAPILocationIdPOSTKey;
extern NSString *const kHEREAPILocationAccessIdKey;
extern NSString *const kHEREAPILocationLatitudeKey;
extern NSString *const kHEREAPILocationLongitudeKey;
extern NSString *const kHEREAPILocationMacAddressKey;
extern NSString *const kHEREAPILocationNameKey;
extern NSString *const kHEREAPILocationUUIDKey;
extern NSString *const kHEREAPILocationMajorKey;
extern NSString *const kHEREAPILocationMinorKey;
extern NSString *const kHEREAPILocationImageKey;
extern NSString *const kHEREAPILocationThumbKey;

#pragma mark - User API
extern NSString *const kHEREAPIUserPOSTUrl;
extern NSString *const kHEREAPIUserNameKey;
extern NSString *const kHEREAPIUserDeviceTokenKey;

#pragma mark - Message API
extern NSString *const kHEREAPIMessagesGETUrl;
extern NSString *const kHEREAPIMessagesPOSTUrl;
extern NSString *const kHEREAPIMessagesAudioFileKey;
extern NSString *const kHEREAPIMessagesTextKey;
extern NSString *const kHEREAPIMessagesLocationIdKey;
extern NSString *const kHEREAPIMessagesUsernameKey;
extern NSString *const kHEREAPIMessagesDeviceIdKey;
extern NSString *const kHEREAPIMessagesDeviceTypeKey;
extern NSString *const kHEREAPIMessagesBoundaryKey;

#pragma mark - Core Data Classes
extern NSString *const kHERELocationClassKey;
extern NSString *const kHERELocationLastMessageDateKey;
extern NSString *const kHERELocationNameKey;
extern NSString *const kHEREMessageClassKey;

#pragma mark - notification
extern NSString *const kHERENotificationLocationIdKey;

#pragma mark - Installation
extern NSString *const kHEREAppInstallationDateKey;

@end
