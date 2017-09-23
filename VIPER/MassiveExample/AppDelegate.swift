//
//  AppDelegate.swift
//  MassiveExample
//
//  Created by Victor Sukochev on 12/06/2017.
//  Copyright © 2017 Exyte. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    var image = UIImage(named: "origin.jpg")!

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        
        let filterModule = FilterAssembly.createModule(image: image)
        
        window = UIWindow(frame: UIScreen.main.bounds)
        window?.rootViewController = filterModule
        window?.makeKeyAndVisible()
        
        
        return true
    }
}

