//
//  Exchange Screen.swift
//  Tradle
//
//  Created by Patkar, Yuvraj (NA) on 06/09/2024.
//

import SwiftUI



struct Exchange_Screen: View {
    
    var stocksToDisplay = ["AAPL", "TSLA", "MSFT,"]
    
    @State var showingNewSecurityPage = false
    @State var stockToAdd: String = ""

    var body: some View {
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
                        showingNewSecurityPage.toggle()
                    }
                }
            }
        }
        ScrollView{
            VStack{
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

