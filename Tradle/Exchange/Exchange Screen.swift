//
//  Exchange Screen.swift
//  Tradle
//
//  Created by Patkar, Yuvraj (NA) on 06/09/2024.
//

import SwiftUI



struct Exchange_Screen: View {
    
    @State var stocksToDisplay: [String] = ["AAPL", "GOOG"]
    
    @State var showingNewSecurityPage = false
    @State var stockToAdd: String = ""

    var body: some View {
        
        ScrollView{
            VStack{
                Button("New Security") {
                    showingNewSecurityPage.toggle()
                }
                .sheet(isPresented: $showingNewSecurityPage) {
                    Section {
                        Button("Back")
                        {
                            showingNewSecurityPage.toggle()
                        }
                        Form{
                            TextField("Enter Stock Ticker", text: $stockToAdd)
                            Spacer()
                        }
                        Button("Add Security") {
                            stocksToDisplay.append(stockToAdd)
                            stockToAdd = ""
                            showingNewSecurityPage.toggle()
                        }
                    }
                }
                ForEach(stocksToDisplay, id: \.self) {
                    stockSymbol in ExchangeStockBlockView(stockSymbol: stockSymbol)
                }
            }
        }
    }
}

#Preview {
    Exchange_Screen()
}

