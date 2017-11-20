//
//  ProductListPresenter.swift
//  obdshop
//
//  Created by baizheng on 19/11/2017.
//Copyright © 2017 baizheng. All rights reserved.
//

import Foundation


protocol ProductListPresenter: class {
    func loadContent()
 
}

class ProductListDefaultPresenter: ProductListPresenter {
    
    fileprivate let interactor: ProductListInteractor
    fileprivate let router: ProductListRouter
    fileprivate weak var view: ProductListView?
    
    required init(interactor: ProductListInteractor, router: ProductListRouter, view: ProductListView) {
        self.interactor = interactor
        self.router = router
        self.view = view
    }
    
 
    
    func loadContent() {
        
    }
    
 
    
}

