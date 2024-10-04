//
//  Home Screen.swift
//  Tradle
//
//  Created by Patkar, Yuvraj (NA) on 06/09/2024.
//

import SwiftUI




struct Home_Screen: View {
    
    @State private var PortfolioViewModel = Portfolio.shared
    
    
    @State private var showingNewOrderPage = false
    @State private var StockEntered: String = ""
    @State private var QuantityBought: String = ""
    
    
    
    var body: some View {
        VStack{
            Spacer()
            Section {
                Text("Total Portfolio Value is \(Portfolio.shared.portfolioValue)")
                Spacer()
                Button("New Order") {
                    showingNewOrderPage.toggle()
                }
                
                
                .sheet(isPresented: $showingNewOrderPage) {
                    Section {
                        Form{
                            TextField("Enter Stock Name", text: $StockEntered)
                            TextField("Enter Quantity", text:
                                        $QuantityBought)
                
                        }
                    }
                    Button("Confirm Order") {
                        
                        showingNewOrderPage.toggle()
                    }
                 
                }
            }
        }
    }
}
#Preview {
    Home_Screen()
}
