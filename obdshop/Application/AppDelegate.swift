//
//  AppDelegate.swift
//  obdshop
//
//  Created by baizheng on 13/11/2017.
//  Copyright © 2017 baizheng. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        setupNavigationBarFont()
        setupBackButtonAppearance()
        presentInitialScreen()
        return true
    }
    
    // MARK: Private Methods
    
    func presentInitialScreen() {
        let rootRouter = RootRouter()
        rootRouter.presentFirstScreen(inWindow: window!)
    }
    
    fileprivate func setupNavigationBarFont() {
        let navigationBarAppearace = UINavigationBar.appearance()
        navigationBarAppearace.tintColor = .black
        navigationBarAppearace.barTintColor = .white
        navigationBarAppearace.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.black]
    }
    
    fileprivate func setupBackButtonAppearance() {
        UINavigationBar.appearance().backIndicatorImage = UIImage.backIcon
        UINavigationBar.appearance().backIndicatorTransitionMaskImage = UIImage.backIcon
        UIBarButtonItem.appearance().setBackButtonTitlePositionAdjustment(UIOffset(horizontal: 0, vertical: -60), for: .default)
    }

}

