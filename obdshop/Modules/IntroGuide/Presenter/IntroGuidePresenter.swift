//
//  IntroGuidePresenter.swift
//  obdshop
//
//  Created by baizheng on 13/11/2017.
//Copyright © 2017 baizheng. All rights reserved.
//

import Foundation

class IntroGuidePresenter {

    // MARK: Properties

    weak var view: IntroGuideView?
    var router: IntroGuideWireframe?
    var interactor: IntroGuideUseCase?
}

extension IntroGuidePresenter: IntroGuidePresentation {
    // TODO: implement presentation methods
}

extension IntroGuidePresenter: IntroGuideInteractorOutput {
    // TODO: implement interactor output methods
}
