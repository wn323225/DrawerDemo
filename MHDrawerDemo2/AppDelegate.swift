//
//  AppDelegate.swift
//  MHDrawerDemo2
//
//  Created by mhrusrm3 on 2017/7/27.
//  Copyright © 2017年 mhrusrm3. All rights reserved.
//


import UIKit

let width = UIScreen.main.bounds.size.width
let height = UIScreen.main.bounds.size.height

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var centerContainer: MMDrawerController!


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        
        
        let mainStoryboard = UIStoryboard(name: "Main", bundle: nil)
        
        let centerViewController = mainStoryboard.instantiateViewController(withIdentifier: "HomePageViewController") as! ViewController
     
        let centerNav = UINavigationController(rootViewController: centerViewController)
        
        
         //let leftDrawerViewController = LeftDrawerViewController()
        //centerContainer = MMDrawerController(center: centerNav, leftDrawerViewController: leftDrawerViewController)
        
        
        let leftViewController = mainStoryboard.instantiateViewController(withIdentifier: "LeftViewController") as! LeftViewController
        centerContainer = MMDrawerController(center: centerNav, leftDrawerViewController: leftViewController)
        
        // 手势
        centerContainer.openDrawerGestureModeMask = MMOpenDrawerGestureMode.all
        centerContainer.closeDrawerGestureModeMask = MMCloseDrawerGestureMode.all
        
        //设置动画，这里是设置打开侧栏透明度从0到1
        centerContainer.setDrawerVisualStateBlock { (drawerController, drawerSide, percentVisible) -> Void in
            
            var sideDrawerViewController:UIViewController?
            if(drawerSide == MMDrawerSide.left){
                sideDrawerViewController = drawerController?.leftDrawerViewController;
            }
//            if(drawerSide == MMDrawerSide.left){
//                sideDrawerViewController = drawerController?.rightDrawerViewController;
//            }
            sideDrawerViewController?.view.alpha = percentVisible
        }
        
        window?.rootViewController = centerContainer
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


}
