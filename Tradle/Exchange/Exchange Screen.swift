//
//  Exchange Screen.swift
//  Tradle
//
//  Created by Patkar, Yuvraj (NA) on 06/09/2024.
//

import SwiftUI

struct Exchange_Screen: View {
    var body: some View {
        
        @State var showingNewSecurityPage = false
        
        VStack{

            Button("New Security") {
                showingNewSecurityPage.toggle()
            }
            
            
            .sheet(isPresented: $showingNewSecurityPage) {
                
                Section {
                    Form{
                        Text("HEllO WORLD")
                    }
                }
            }
            
            ExchangeStockBlockView(StockData: Security(stockName: "Apple", stockPrice: 225.67))
            ExchangeStockBlockView(StockData: Security(stockName: "Amazon", stockPrice: 132.35))
            ExchangeStockBlockView(StockData: Security(stockName: "Microsoft", stockPrice: 325.69))
            ExchangeStockBlockView(StockData: Security(stockName: "Alphabet", stockPrice: 132.15))
            ExchangeStockBlockView(StockData: Security(stockName: "NVIDIA", stockPrice: 434.67))
            ExchangeStockBlockView(StockData: Security(stockName: "Meta Platforms", stockPrice: 311.56))
            
        }
    }
}

#Preview {
    Exchange_Screen()
}

