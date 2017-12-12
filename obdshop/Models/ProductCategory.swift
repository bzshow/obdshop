//
//  ProductCategory.swift
//  WooCommerceSDK
//
//  Created by Sergio Utama on 27/07/2016.
//  Copyright © 2016 Sergio Utama. All rights reserved.
//

import Foundation

public struct ProductCategory : Decodable {
    var id : Int ///
    var name : String /// Category name
    var slug : String
    var parent : Int
    var description : String
    var display : String
    var image : CategoryImageProperty?
    var menuOrder : Int
    var count : Int
    
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case slug
        case parent
        case description
        case display
        case image
        case menuOrder = "menu_order"
        case count
    }
}

public struct CategoryImageProperty : Decodable {
    var id : Int
    var dateCreated : String
    var dateCreatedGmt : String
    var dateModified : String
    var dateModifiedGmt : String
    var src : String
    var name : String
    var alt : String
    
    private enum CodingKeys: String, CodingKey {
        case id
        case dateCreated = "date_created"
        case dateCreatedGmt = "date_created_gmt"
        case dateModified = "date_modified"
        case dateModifiedGmt = "date_modified_gmt"
        case src
        case name
        case alt
    }
}
