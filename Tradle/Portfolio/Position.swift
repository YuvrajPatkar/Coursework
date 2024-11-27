//
//  Position.swift
//  Tradle
//
//  Created by Yuvraj Rahul Patkar on 26/09/2024.
//

import Foundation

class Position {
    var security: StockFinancialData
    
    var volume: Double
    var PositionValue: Double {
        return self.volume * self.security.price    }
    
    init(security: StockFinancialData, volume: Double) {
        self.security =  security
        self.volume = volume
        
    }
}
