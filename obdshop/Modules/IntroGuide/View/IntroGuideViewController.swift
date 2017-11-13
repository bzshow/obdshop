//
//  IntroGuideViewController.swift
//  obdshop
//
//  Created by baizheng on 13/11/2017.
//Copyright © 2017 baizheng. All rights reserved.
//

import Foundation
import UIKit

class IntroGuideViewController: BaseViewController, StoryboardLoadable {

    // MARK: Properties

    var presenter: IntroGuidePresentation?

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()
    }
}

extension IntroGuideViewController: IntroGuideView {
    // TODO: implement view output methods
}
