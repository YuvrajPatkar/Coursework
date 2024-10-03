//
//  Portfolio.swift
//  Tradle
//
//  Created by Patkar, Yuvraj (NA) on 11/09/2024.
//

import Foundation


class Portfolio: ObservableObject {
    
    static let shared = Portfolio()
    
    var totalCash: Double = 100000
    
    var portfolioValue: String {
        let portval = totalCash + totalEquity
        // rounding the portfolio to two decimal places
        let formattedPortval = String(format: "%.2f", portval)
        return formattedPortval
    }
    var totalEquity: Double {
        var sum: Double = 0
        for position in equityPositions{
            var sum = sum + position.PositionValue
        }
        return sum
        
    }
    var equityPositions: [Position] = []
    
    
    
    private init() {}
    
}


