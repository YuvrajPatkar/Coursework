//
//  JSON decoder.swift
//  Tradle
//
//  Created by Yuvraj Rahul Patkar on 09/10/2024.
//

import Foundation

import SwiftUI

class StockViewModel: ObservableObject {
    @Published var quote: StockQuote?
    private let service = FinnhubService()
    
    func fetchQuote(for symbol: String) {
        Task {
            do {
                let fetchedQuote = try await service.fetchStockQuote(symbol: symbol)
                DispatchQueue.main.async {
                    self.quote = fetchedQuote
                }
            } catch {
                print("Error fetching quote: \(error)")
            }
        }
    }
}
