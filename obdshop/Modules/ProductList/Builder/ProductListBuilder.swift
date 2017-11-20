//
//  ProductListBuilder.swift
//  obdshop
//
//  Created by baizheng on 19/11/2017.
//Copyright © 2017 baizheng. All rights reserved.
//


import Foundation
import UIKit

public protocol ProductListBuilder {
    func buildProductListModule() -> UIViewController?
}
