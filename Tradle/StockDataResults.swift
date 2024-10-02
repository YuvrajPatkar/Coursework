//
//  StockDataResults.swift
//  Tradle
//
//  Created by Patkar, Yuvraj (NA) on 02/10/2024.
//

import Foundation

class StockDataResults: Codable {
    var name: String
    var price: Float
    
    init(name: String, price: Float) {
        self.name = name
        self.price = price
    }
    
}
