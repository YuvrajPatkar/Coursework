//
//  StockFinancialData.swift
//  Tradle
//
//  Created by Yuvraj Rahul Patkar on 06/11/2024.
//

import Foundation

class StockFinancialData: Codable {
    var id: UUID { UUID() }
    let symbol: String
    let price: Double
    let change: Double
    let changePercent: Double
    let daysLow: Double
    let daysHigh: Double
    let yearLow: Double
    let yearHigh: Double
    let marketCap: Double
    let beta: Double
    let priceToBook: Double
    let dividendYield: Double
    let eps: Double
    let peRatio: Double
}
