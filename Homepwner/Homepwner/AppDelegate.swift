//
//  AppDelegate.swift
//  Homepwner
//
<<<<<<< HEAD
//  Created by Lorenzo Llamas on 2/28/16.
//  Copyright © 2016 FinesseFilm Productions. All rights reserved.
=======
//  Created by David on 2/28/16.
//  Copyright © 2016 Big Nerd Ranch. All rights reserved.
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    let itemStore = ItemStore()

    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        // Override point for customization after application launch.
<<<<<<< HEAD
        //create an ItemStore
        //let itemStore = ItemStore()
        
        //create imagestore
        let imageStore = ImageStore()
        
        //access the itemsviewcontroller and set its item store
        //let itemsController = window!.rootViewController as! ItemsViewController
=======
        
        // Create an ImageStore
        let imageStore = ImageStore()
        
        //Access the ItemsViewController and set its item store and image store
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
        let navController = window!.rootViewController as! UINavigationController
        let itemsController = navController.topViewController as! ItemsViewController
        itemsController.itemStore = itemStore
        itemsController.imageStore = imageStore
        return true
    }

    func applicationWillResignActive(application: UIApplication) {
        // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
        // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
    }

    func applicationDidEnterBackground(application: UIApplication) {
<<<<<<< HEAD
        // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
        // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
=======
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
        let success = itemStore.saveChanges()
        if (success) {
            print("Saved all of the Items")
        }
        else {
            print("Could not save any of the Items")
        }
    }
<<<<<<< HEAD

=======
    
>>>>>>> 75eb3d1cf83949e3eb944bc4f1cb18fddf2f5198
    func applicationWillEnterForeground(application: UIApplication) {
        // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
    }

    func applicationDidBecomeActive(application: UIApplication) {
        // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    }

    func applicationWillTerminate(application: UIApplication) {
        // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
    }


}

