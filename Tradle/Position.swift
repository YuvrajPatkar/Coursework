//
//  Position.swift
//  Tradle
//
//  Created by Yuvraj Rahul Patkar on 26/09/2024.
//

import Foundation

class Position {
    var security: Security
    var volume: Double
    var PositionValue: Double {
        return self.volume * self.security.stockPrice
    }
    
    init(security: Security, volume: Double) {
        self.security = security
        self.volume = volume
        
    }
}
