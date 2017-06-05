//
//  AppDelegate.swift
//  NPD_GAMES
//
//  Created by DongGao on 27/4/17.
//  Copyright © 2017 TheGreatMind. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //导航条颜色
        UINavigationBar.appearance().barTintColor = UIColor(red: 255/255, green: 188/255, blue: 66/255, alpha: 1)
        //导航条前景色
        UINavigationBar.appearance().tintColor = UIColor.white
        //导航条标题字体
        if let barfont = UIFont(name: "Avenir-Book", size: 24) {
            UINavigationBar.appearance().titleTextAttributes = [
                NSFontAttributeName: barfont,
                NSForegroundColorAttributeName: UIColor.white
                
            ]
        }
        
        //设置tabbar
        UINavigationBar.appearance().shadowImage = UIImage()
        UINavigationBar.appearance().setBackgroundImage(UIImage(), for: .default)
        
        UITabBar.appearance().tintColor = UIColor.darkGray
        UITabBar.appearance().barTintColor = UIColor(red: 255/255, green: 188/255, blue: 66/255, alpha: 1)
        //UIColor(red: 46/255, green: 196/255, blue: 182/255, alpha: 1)

        
        return true
    }
    
    
    /// set orientations you want to be allowed in this property by default
    var orientationLock = UIInterfaceOrientationMask.all
    
    func application(_ application: UIApplication, supportedInterfaceOrientationsFor window: UIWindow?) -> UIInterfaceOrientationMask {
        return self.orientationLock
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


}
