//
//  Position.swift
//  Tradle
//
//  Created by Yuvraj Rahul Patkar on 26/09/2024.
//

import Foundation

class Position {
    var security: StockFinancialData
    var size: Double
    var priceBoughtAt: Double
    
    
    init(security: StockFinancialData, size: Double, priceBoughtAt: Double) {
        self.security =  security
        self.size = size
        self.priceBoughtAt = priceBoughtAt
        
    }
    
    
}

