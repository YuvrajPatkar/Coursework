//
//  Home Screen.swift
//  Tradle
//
//  Created by Patkar, Yuvraj (NA) on 06/09/2024.
//

import SwiftUI




struct Home_Screen: View {
    
    @State private var PortfolioViewModel = Portfolio.shared
    
    
    @State var showingNewOrderPage = false
    @State var StockEntered: String = ""
    @State var QuantityBought: String = ""
    @State var OrderType:Bool = true
    
    
    
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
                            Toggle(isOn: $OrderType, label: {
                                if OrderType == true {
                                    Text("Buy")
                                
                                } else {
                                    Text("Sell")
                                    
                                }
                            })
              
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
