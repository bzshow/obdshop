//
//  RootWireframe.swift
//
//  Created by MARCELO GRACIETTI on 07/11/16.
//  Copyright © 2016 Cheesecake Labs. All rights reserved.
//

import UIKit

class RootRouter: NSObject {
    
    func presentFirstScreen(inWindow window: UIWindow) {
        presentIntroGuideScreen()
    }
    
    private func presentIntroGuideScreen() {
        let introGuideViewController = IntroGuideRouter.setupModule()
        presentView(introGuideViewController)
    }
    
    private func presentView(_ viewController: UIViewController) {
        guard let window = UIApplication.shared.delegate?.window! else { return }
        window.backgroundColor = UIColor.white
        window.makeKeyAndVisible()
        window.rootViewController = viewController
    }    
}
