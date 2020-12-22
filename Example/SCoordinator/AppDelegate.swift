//
//  AppDelegate.swift
//  SCoordinator
//
//  Created by pcugogo on 12/22/2020.
//  Copyright (c) 2020 pcugogo. All rights reserved.
//

import UIKit
import SCoordinator

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    var appCoordinator: AppCoordinator!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        window = UIWindow(frame: UIScreen.main.bounds)
        appCoordinator = AppCoordinator(root: window!)
        appCoordinator.navigate(to: AppRoute.main)
        
        return true
    }
}

