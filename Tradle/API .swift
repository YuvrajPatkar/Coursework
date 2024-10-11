//
//  API .swift
//  Tradle
//
//  Created by Patkar, Yuvraj (NA) on 25/09/2024.
//

import Foundation

import Foundation

class FinnhubService {
    private let apiKey = "YOUR_API_KEY_HERE"
    private let baseURL = "https://finnhub.io/api/v1"
    
    func fetchStockQuote(symbol: String) async throws -> StockQuote {
        let urlString = "\(baseURL)/quote?symbol=\(symbol)&token=\(apiKey)"
        guard let url = URL(string: urlString) else {
            throw URLError(.badURL)
        }
        
        let (data, _) = try await URLSession.shared.data(from: url)
        let quote = try JSONDecoder().decode(StockQuote.self, from: data)
        return quote
    }
}

struct StockQuote: Codable {
    let currentPrice: Double
    let change: Double
    let percentChange: Double
    let high: Double
    let low: Double
    let open: Double
    let previousClose: Double
    
    enum CodingKeys: String, CodingKey {
        case currentPrice = "c"
        case change = "d"
        case percentChange = "dp"
        case high = "h"
        case low = "l"
        case open = "o"
        case previousClose = "pc"
    }
}
