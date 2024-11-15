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
            
            ExchangeStockBlockView(stockSymbol: "AAPL")
            ExchangeStockBlockView(stockSymbol: "TSLA")
            ExchangeStockBlockView(stockSymbol: "MSFT")
            ExchangeStockBlockView(stockSymbol: "GS")
            ExchangeStockBlockView(stockSymbol: "KKR")
            
            
        }
    }
}

#Preview {
    Exchange_Screen()
}

