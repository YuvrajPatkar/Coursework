//
//  StockFinancialData.swift
//  Tradle
//
//  Created by Yuvraj Rahul Patkar on 06/11/2024.
//

import Foundation

class StockFinancialData: Codable, Identifiable {
    var id: UUID { UUID() }
    let symbol: String
    let name: String
    let price: Double
    let change: Double
    let changesPercentage: Double
    let dayHigh: Double
    let dayLow: Double
    
}
