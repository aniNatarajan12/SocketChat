//
//  AppDelegate.swift
//  SocketChat
//
//  Created by Anirudh Natarajan on 2/25/18.
//  Copyright © 2018 Anirudh Natarajan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        UIApplication.shared.statusBarStyle = .default
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = UINavigationController(rootViewController: JoinChatViewController())
        window?.makeKeyAndVisible()
        return true
    }
    
}
