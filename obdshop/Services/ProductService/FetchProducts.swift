//
//  WooCommerceClient.swift
//  obdshop
//
//  Created by baizheng on 19/11/2017.
//  Copyright © 2017 baizheng. All rights reserved.
//

import Foundation
import CodableAlamofire
import Alamofire


 
public protocol FetchProductsService {
    func makeRequest()
}

final public class FetchProducts: FetchProductsService {
    
    public func makeRequest() {
        let consumerKey = "ck_f999c0c842d27ae751c3b8cc1e39a27a2b55ea74"
        let consumerSecret = "cs_78f32f5245cdd88f3c7d884c86205a8b65fced0b"
        let siteURL = "http://woo.zhengblog.com/"
        let user = consumerKey
        let password = consumerSecret
        
        let url = URL(string: siteURL + "wp-json/wc/v2/products")!
        let decoder = JSONDecoder()
        decoder.dateDecodingStrategy = .secondsSince1970 // It is necessary for correct decoding. Timestamp -> Date.
        
        Alamofire.request(url)
            .authenticate(user: user, password: password)
            .responseDecodableObject(keyPath: "", decoder: decoder) { (response: DataResponse<[Product]>) in
            let product = response.result.value
            print(product)
        }
        
    /*
    let url = siteURL
    let user = consumerKey
    let password = consumerSecret
    
 
 
    
    Alamofire.request(siteURL + "wp-json/wc/v2/products")
    .authenticate(user: user, password: password)
    .responseJSON { response in
    if response.result.isSuccess {
        if let json = response.result.value {
            let encoder = JSONEncoder()
            let products = try JSONDecoder().decode([Product].self, from: json)
        } else {
    
        }
        
    }
     */
    }
}
