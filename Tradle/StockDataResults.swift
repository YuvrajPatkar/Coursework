//
//  StockDataResults.swift
//  Tradle
//
//  Created by Yuvraj Rahul Patkar on 03/10/2024.
//

import Foundation

class StockDataResults: Codable {
    var name: String
    var price: Double
    
    init(name: String, price: Double) {
        self.name = name
        self.price = price
    }
    
}
