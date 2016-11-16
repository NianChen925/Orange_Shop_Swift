//
//  storage_macro.swift
//  Orange_Shop_Swift
//
//  Created by orange on 2016/11/14.
//  Copyright © 2016年 mogo. All rights reserved.
//

import Foundation

//在本地保存用户数据的键

//添加产品到购物车时，服务器会生成唯一的app_cart_cookie_id，必须保存它，每次请求都要提交它
let kStorageAppCartCookieId = "app_cart_cookie_id"

//用户是否已经登录, 由app传user_id和access_token过来
let kStorageAccessToken = "access_token"

//用户信息
let kStorageUserId = "user_id"
let kStorageUserMobile = "user_mobile"
let kStorageUserLevel = "user_level"
		
