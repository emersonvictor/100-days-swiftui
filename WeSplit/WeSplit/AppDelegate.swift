//
//  AppDelegate.swift
//  WeSplit
//
//  Created by Emerson Victor on 14/02/20.
//  Copyright © 2020 emer. All rights reserved.
//

import UIKit
import SwiftUI

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        let window = UIWindow(frame: UIScreen.main.bounds)
        self.window = window
        window.rootViewController = UIHostingController(rootView: ContentView())
        window.makeKeyAndVisible()

        return true
    }
}

