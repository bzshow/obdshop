//
//  ProductListDefaultRouter.swift
//  obdshop
//
//  Created by baizheng on 19/11/2017.
//Copyright © 2017 baizheng. All rights reserved.
//

import Foundation
import UIKit

class ProductListDefaultRouter: ProductListRouter {
    
    weak var viewController: UIViewController?
    
    init (viewController: UIViewController) {
        self.viewController = viewController
    }
    
    /*
    func navigateToWeatherDetail(withLocation location: Location) {
        if let weatherDetailVC = self.weatherDetailBuilder()?.buildWeatherDetailModule(withLocation: location) {
            self.viewController?.navigationController?.pushViewController(weatherDetailVC, animated: true)
        }
    }
    
    fileprivate func weatherDetailBuilder() -> WeatherDetailBuilder? {
        return WeatherDetailDefaultBuilder()
    }
    */
 
    
}
