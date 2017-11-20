//
//  ProductListDefaultBuilder.swift
//  obdshop
//
//  Created by baizheng on 19/11/2017.
//Copyright © 2017 baizheng. All rights reserved.
//

import UIKit

public struct ProductListDefaultBuilder : ProductListBuilder {
    
    public func buildProductListModule() -> UIViewController? {
        let view = ProductListViewController()
        let interactor = ProductListDefaultInteractor()
        let router = ProductListDefaultRouter(viewController: view)
        let presenter = ProductListDefaultPresenter(interactor: interactor, router: router, view: view)
        
        view.presenter = presenter
        interactor.presenter = presenter
        
        return view
    }
}

