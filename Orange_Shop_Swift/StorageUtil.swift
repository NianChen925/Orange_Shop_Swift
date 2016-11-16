//
//  StorageUtil.swift
//  Orange_Shop_Swift
//
//  Created by orange on 2016/11/14.
//  Copyright © 2016年 mogo. All rights reserved.
//

import UIKit

class StorageUtil: NSObject {
    //添加产品到购物车时，服务器会生成唯一的app_cart_cookie_id，必须保存它，每次请求都要提交它
    static func saveAppCartCookieId(appCartCookieId: NSString) {
        saveObject(obj: appCartCookieId, key: kStorageAppCartCookieId as NSString)
    }
    
    static func getAppCartCookieId() -> NSString? {
        return getObject(key: kStorageAppCartCookieId as NSString) as! NSString?
    }
    
    //用户是否已经登录，由app传user_id和access_token过来
    static func saveAccessToken(access_token: NSString) {
        saveObject(obj: access_token, key: kStorageAccessToken as NSString)
    }
    static func getAccessToken() -> NSString? {
        return getObject(key: kStorageAccessToken as NSString) as! NSString?
    }
    
    
    
    //公用的保存和获取本地数据的方法
    static func saveObject(obj: NSObject, key: NSString) {
        let defaults = UserDefaults.standard
        defaults.set(obj, forKey: key as String)
        defaults.synchronize()
    }
    
    static func getObject(key: NSString) -> NSObject?{
        let defaults = UserDefaults.standard
        let obj = defaults.object(forKey: key as String)
        return obj as? NSObject
    }
    
    //用户信息
    static func saveUserId(userId: NSString) {
        saveObject(obj: userId, key: kStorageUserId as NSString)
    }
    
    static func getUserId() -> NSNumber? {
        return getObject(key: kStorageUserId as NSString) as! NSNumber?
    }
    
    static func saveUserMobile(userMobile: NSString) {
        saveObject(obj: userMobile, key: kStorageUserMobile as NSString)
    }
    
    static func getUserMobile() -> NSString? {
        return getObject(key: kStorageUserMobile as NSString) as! NSString?
    }
    
    static func saveUserLevel(userLevel: NSNumber) {
        saveObject(obj: userLevel, key: kStorageUserLevel as NSString)
    }
    
    static func getUserLevel() -> NSNumber? {
        return getObject(key: kStorageUserLevel as NSString) as! NSNumber?
    }
    
    static func saveUserLevelLabel(userLevelLabel: NSString) {
        saveObject(obj: userLevelLabel, key: kStorageUserLevel as NSString)
    }
    
    static func getUserLevelLabel() -> NSString? {
        return getObject(key: kStorageUserLevel as NSString) as! NSString?
    }
}
