//
//  dataProduct.swift
//  MIXes
//
//  Created by 김결 on 2021/11/18.
//

import Foundation

struct Product {
    var productName:String
    var productIndex:Int
    var productPrice:Int
    var productVolume:Int
}
class  productData {
    static let shared = productData()
    
    var product: [Product] = [
        Product(productName: "포도향", productIndex: 1, productPrice: 1000, productVolume: 10),
        Product(productName: "포도향", productIndex: 1, productPrice: 1000, productVolume: 10),
        Product(productName: "포도향", productIndex: 1, productPrice: 1000, productVolume: 10),
    ]
}
