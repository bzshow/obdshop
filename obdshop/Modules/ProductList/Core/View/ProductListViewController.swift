//
//  ProductListViewController.swift
//  obdshop
//
//  Created by baizheng on 19/11/2017.
//Copyright © 2017 baizheng. All rights reserved.
//

import Foundation
import UIKit

class ProductListViewController: UITableViewController, ProductListView {
    
    var presenter: ProductListPresenter?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.presenter?.loadContent()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        self.presenter?.loadContent()
    }
    

    
}
