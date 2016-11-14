//
//  AppDelegate.swift
//  Orange_Shop_Swift
//
//  Created by orange on 2016/11/10.
//  Copyright © 2016年 mogo. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow.init(frame: UIScreen.main.bounds)
        window?.rootViewController = rootController()
        window?.makeKeyAndVisible()
        return true
    }

    func applicationWillResignActive(_ application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }
    
    //methods 
    func rootController() -> UITabBarController {
        let tabBarController = UITabBarController()
        //home tab
        let homeController = TabHomeController()
        homeController.tabBarItem = createTabBarItem(title: "首页", imageName: "tab_home", selectedImageName: "tab_home_s")
        let homeNavController = UINavigationController.init(rootViewController: homeController)
        
        //topic tab
        let topicController = TabTopicController()
        topicController.tabBarItem = createTabBarItem(title: "优惠", imageName: "tab_topic", selectedImageName: "tab_topic_s")
        let topicNavController = UINavigationController.init(rootViewController: topicController)
        
        //home tab
        let cartController = TabCartController()
        cartController.tabBarItem = createTabBarItem(title: "购物车", imageName: "tab_cart", selectedImageName: "tab_cart_s")
        let cartNavController = UINavigationController.init(rootViewController: cartController)
        
        //home tab
        let myController = TabMyController()
        myController.tabBarItem = createTabBarItem(title: "我的", imageName: "tab_my", selectedImageName: "tab_my_s")
        let myNavController = UINavigationController.init(rootViewController: myController)
        
        tabBarController.viewControllers = [homeNavController,topicNavController,cartNavController,myNavController]
        
        return tabBarController
        
    }
    
    func createTabBarItem(title: NSString, imageName: NSString, selectedImageName: NSString) -> UITabBarItem {
        let image = UIImage.init(imageLiteralResourceName: imageName as String)
        let selectedImage = UIImage.init(imageLiteralResourceName: selectedImageName as String)
        return UITabBarItem.init(title: title as String, image: image, selectedImage: selectedImage)
        
    }


}

