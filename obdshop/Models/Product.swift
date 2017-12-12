//
//  Product.swift
//  WooCommerceSDK
//
//  Created by Sergio Utama on 27/07/2016.
//  Copyright © 2016 Sergio Utama. All rights reserved.
//

import Foundation

public enum ProductType {
    case Simple,Grouped,Affiliate,Variable
}

public struct Product : Decodable {
    var id : Int
    var name : String
    var slug : String
    var permalink : String
    var dateCreated : String
    var dateCreatedGmt : String
    var dateModified : String
    var dateModifiedGmt : String
    var type : String
    var status : String
    var featured : Bool
    var catalogVisibility : String
    var description : String // HTML
    var shortDescription : String // HTML
    var sku : String
    var price : String
    var regularPrice : String
    var salePrice : String
    var dateOnSaleFrom : String?
    var dateOnSaleFromGmt : String?
    var dateOnSaleTo : String?
    var dateOnSaleToGmt : String?
    var priceHTML : String
    var onSale : Bool
    var purchasable : Bool
    var totalSales : Int
    var virtual : Bool
    var downloadable : Bool
    var downloads : [DownloadProperty]
    var downloadLimit : Int
    var downloadExpiry : Int
    //var downloadType : String // standard, application, music
    var externalURL : String // only for external product, check product type
    var buttonText : String // only for external product, check product type
    var taxStatus : String // taxable, shipping, none
    var taxClass : String
    var manageStock : Bool // false
    var stockQuantity : Int?
    var inStock : Bool
    var backorders : String // no, notify, allow
    var backordersAllowed : Bool
    var backordered : Bool
    var soldIndividually : Bool
    var weight : String
    var dimensions : DimensionProperty
    var shippingRequired : Bool
    var shippingTaxable : Bool
    var shippingClass : String // shipping class slug
    var shippingClassID : Int // shipping class ID
    var reviewsAllowed : Bool
    var averageRating : String
    var ratingCount : Int
    var relatedIDs : [Int]
    var upsellIDs : [Int]
    var crossSellIDs : [Int]
    var parentID : Int
    var purchaseNote : String
    var categories : [CategoryProperty]
    var tags : [TagProperty]
    var images : [ImageProperty]
    var attributes : [AttributeProperty]
    var defaultAttributes : [DefaultAttributeProperty]
    var variations : [Int]
    var groupedProducts : [Int]
    var menuOrder : Int
    //var metaData : [MetaDataProperty]
    
    private enum CodingKeys: String, CodingKey {
        case id
        case name
        case slug
        case permalink
        case dateCreated = "date_created"
        case dateCreatedGmt = "date_created_gmt"
        case dateModified = "date_modified"
        case dateModifiedGmt = "date_modified_gmt"
        case type
        case status
        case featured
        case catalogVisibility = "catalog_visibility"
        case description
        case shortDescription = "short_description"
        case sku
        case price
        case regularPrice = "regular_price"
        case salePrice = "sale_price"
        case dateOnSaleFrom = "date_on_sale_from"
        case dateOnSaleFromGmt = "date_on_sale_from_gmt"
        case dateOnSaleTo = "date_on_sale_to"
        case dateOnSaleToGmt = "date_on_sale_to_gmt"
        case priceHTML = "price_html"
        case onSale = "on_sale"
        case purchasable
        case totalSales = "total_sales"
        case virtual
        case downloadable
        case downloads
        case downloadLimit = "download_limit"
        case downloadExpiry = "download_expiry"
        //case downloadType = "download_type" // standard, application, music
        case externalURL = "external_url" // only for external product, check product type
        case buttonText = "button_text" // only for external product, check product type
        case taxStatus = "tax_status" // taxable, shipping, none
        case taxClass = "tax_class"
        case manageStock = "manage_stock"
        case stockQuantity = "stock_quantity"
        case inStock = "in_stock"
        case backorders   // no, notify, allow
        case backordersAllowed = "backorders_allowed"
        case backordered
        case soldIndividually = "sold_individually"
        case weight
        case dimensions
        case shippingRequired = "shipping_required"
        case shippingTaxable = "shipping_taxable"
        case shippingClass = "shipping_class" // shipping class slug
        case shippingClassID = "shipping_class_id" // shipping class ID
        case reviewsAllowed = "reviews_allowed"
        case averageRating = "average_rating"
        case ratingCount = "rating_count"
        case relatedIDs = "related_ids"
        case upsellIDs = "upsell_ids"
        case crossSellIDs = "cross_sell_ids"
        case parentID = "parent_id"
        case purchaseNote = "purchase_note"
        
        case categories
        case tags
        case images
        case attributes
        case defaultAttributes = "default_attributes"
        case variations
        case groupedProducts = "grouped_products"
        case menuOrder = "menu_order"
        //case metaData
        
        
    }
    
    
}

public struct DownloadProperty : Decodable {
    var id : String
    var name : String
    var file : String
}

public struct DimensionProperty : Decodable  {
    var length : String
    var width : String
    var height : String
}

public struct CategoryProperty : Decodable  {
    var id : Int
    var name : String
    var slug : String
}

public struct TagProperty : Decodable  {
    var id : Int
    var name : String
    var slug : String
}

public struct ImageProperty : Decodable  {
    var id : Int
    var dateCreated : String
    var dateCreatedGmt : String
    var dateModified : String
    var dateModifiedGmt : String
    var src : String // image source
    var name : String
    var alt : String // alternative text
    var position : Int // position in array, 0 == featured
    private enum CodingKeys: String, CodingKey {
        case id
        case dateCreated = "date_created"
        case dateCreatedGmt = "date_created_gmt"
        case dateModified = "date_modified"
        case dateModifiedGmt = "date_modified_gmt"
        case src
        case name
        case alt
        case position
    }
}

public struct AttributeProperty : Decodable  {
    var id : Int
    var name : String
    var position : Int
    var visible : Bool
    var variation : Bool
    var options : [String] // String of term name
}

public struct DefaultAttributeProperty : Decodable {
    var id : Int
    var name : String
    var option : String
}
/*
public struct VariationProperty : Decodable {
    var id : Int
    var dateCreated : NSDate
    var dateModified : NSDate
    var permalink : String // URL format
    var sku : String
    var price : String
    var regularPrice : String
    var salePrice : String
    var dateOnSaleFrom : String
    var dateOnSaleTo : String
    var onSale : Bool
    var purchasable : Bool
    var virtual : Bool
    var downloadable : Bool
    var downloads : [DownloadProperty]
    var downloadLimit : Int
    var downloadExpiry : Int
    var taxStatus : String
    var taxClass : String
    var manageStock : Bool
    var stockQuantity : Int
    var inStock : Bool
    var backorders : String
    var backordersAllowed : Bool
    var backordered : Bool
    var purchaseable : Bool
    var weight : Int
    var dimension : [DimensionProperty]
    var shippingClass : String
    var shippingClassID : Int
    var image : [ImageProperty] // featured image, use position 0
    var attributes : [VariationAttributeProperty]
    
}
*/
public struct VariationAttributeProperty : Decodable  {
    var id : Int
    var name : String
    var option : String // selected attribute term name
}

public struct ProductReview  : Decodable {
    var id : Int
    var dateCreated : String
    var rating : Int
    var name : String
    var email : String
    var verified : Bool
    
    private enum CodingKeys: String, CodingKey {
        case id
        case dateCreated = "date_created"
        case rating
        case name
        case email
        case verified
    }
}

public struct MetaDataProperty : Decodable  {
    var id : Int
    var key : String
    var value : String
}
