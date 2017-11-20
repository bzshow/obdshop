//
//  ProductListInteractor.swift
//  obdshop
//
//  Created by baizheng on 19/11/2017.
//Copyright © 2017 baizheng. All rights reserved.
//

import Foundation


public protocol ProductListInteractor {
    
}

class ProductListDefaultInteractor: ProductListInteractor {
    weak var presenter: ProductListPresenter?
  
    required init() {
        
    }
 
}
