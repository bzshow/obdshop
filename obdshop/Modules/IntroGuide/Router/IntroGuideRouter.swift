//
//  IntroGuideRouter.swift
//  obdshop
//
//  Created by baizheng on 13/11/2017.
//Copyright © 2017 baizheng. All rights reserved.
//

import Foundation
import UIKit

class IntroGuideRouter {

    // MARK: Properties

    weak var view: UIViewController?

    // MARK: Static methods

    static func setupModule() -> IntroGuideViewController {
        let viewController = UIStoryboard.loadViewController() as IntroGuideViewController
        let presenter = IntroGuidePresenter()
        let router = IntroGuideRouter()
        let interactor = IntroGuideInteractor()

        viewController.presenter =  presenter

        presenter.view = viewController
        presenter.router = router
        presenter.interactor = interactor

        router.view = viewController

        interactor.output = presenter

        return viewController
    }
}

extension IntroGuideRouter: IntroGuideWireframe {
    // TODO: Implement wireframe methods
}
