//
//  AppDelegate.swift
//  UUFeirenSwift
//
//  Created by WZH on 2019/8/17.
//  Copyright © 2019 WZH. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var loginVC: UUWZHLoginViewController?
    var homeVC: UUWZHHomeViewController?
    var navgationController: UINavigationController?
    

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        //初始化控制器
        self.ConfigController()
        
        return true
    }
    
    func ConfigController(){
        
        self.window = UIWindow(frame: UIScreen.main.bounds)
        self.window?.backgroundColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
        
        if true {//暂时这样写，后期是token
            self.homeVC = UUWZHHomeViewController(nibName: "UUWZHHomeViewController", bundle: nil)
            self.navgationController = UINavigationController(rootViewController: self.homeVC ?? UUWZHHomeViewController())
        }else{
            self.loginVC = UUWZHLoginViewController(nibName: "UUWZHLoginViewController", bundle: nil)
            self.navgationController = UINavigationController(rootViewController: self.loginVC ?? UUWZHLoginViewController())
        }
        
        self.window?.rootViewController = navgationController
        self.window?.makeKeyAndVisible()
        
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

