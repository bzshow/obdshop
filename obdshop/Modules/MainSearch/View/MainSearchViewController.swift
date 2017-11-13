//
//  MainSearchViewController.swift
//  Boilerplate
//
//  Created by MARCELO GRACIETTI on 23/01/17.
//  Copyright © 2017 Cheesecake Labs. All rights reserved.
//

import UIKit

class MainSearchViewController: BaseViewController, StoryboardLoadable {
    
    // MARK: Properties
    
    var presenter: MainSearchPresentation?
    
    // MARK: IBOutlets
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    // MARK: Lifecycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        hideKeyboardWhenTappedAround()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        setupKeyboardNotifications(with: scrollView)
    }
    
    override func viewWillDisappear(_ animated: Bool) { 
        super.viewDidDisappear(animated)
        removeKeyboardNotification()
    }
    
    // MARK: IBActions
    
    @IBAction func onDoSomethinClicked() {
        presenter?.doSomething()
    }
    
    // MARK: Private
    
    private func setupView() {
        // TODO: Setup view here
    }
    
    func moveToNextField(_ view: UIView, nextFieldTag: Int) {
        let nextResponder = view.superview?.viewWithTag(nextFieldTag) as UIResponder!
        if (nextResponder != nil) {
            nextResponder?.becomeFirstResponder()
        } else {
            view.resignFirstResponder()
            onDoSomethinClicked()
        }
    }
 
}

extension  MainSearchViewController: MainSearchView {
    
    //TODO: Implement MainSearchView methods here
    
}

