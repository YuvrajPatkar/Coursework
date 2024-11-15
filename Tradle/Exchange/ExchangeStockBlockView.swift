//
//  ExchangeStockBlockView.swift
//  Tradle
//
//  Created by Yuvraj Rahul Patkar on 03/10/2024.
//

import SwiftUI

struct ExchangeStockBlockView: View {
    @StateObject private var api = FinancialDataAPI()
    @State private var isLoading = true
    @State private var errorMessage: String?
    
    var stockSymbol: String
    
    var body: some View {
        VStack {
            if isLoading {
                ProgressView("Fetching \(stockSymbol)...")
                    .padding()
            } else if let stockData = api.stockFinancialData {
                VStack{
                    HStack {
                        
                        Text(stockData.symbol)
                            .font(.system(size: 27, weight: .bold))
                            .frame(maxWidth: .infinity, alignment: .leading)
                        
                        Text(rounded(input: stockData.price))
                            .font(.system(size: 22, weight: .medium))
                            .frame(alignment: .trailing)
                        
                    }
                    Text(String(stockData.changesPercentage))
                        .font(.system(size: 18, weight: .light))
                        .frame(maxWidth: .infinity, alignment: .trailing)
                }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            } else if let errorMessage = errorMessage {
                Text("Error: \(errorMessage)")
                    .foregroundColor(.red)
                    .padding()
            } else {
                Text("No data available.")
                    .padding()
            }
        }
        .onAppear {
            fetchStockData()
        }
    }
    
    private func fetchStockData() {
        isLoading = true
        errorMessage = nil
        
        api.getFinancialData(symbol: stockSymbol) { success in
            isLoading = false
            if !success {
                errorMessage = "Failed to fetch data for \(stockSymbol)."
            }
        }
    }
    
    private func rounded(input: Double) -> String {
        String(format: "%.2f", input)
    }
}

#Preview {
    ExchangeStockBlockView(stockSymbol: "AAPL")
}
