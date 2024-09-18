//
//  Home Screen.swift
//  Tradle
//
//  Created by Patkar, Yuvraj (NA) on 06/09/2024.
//

import SwiftUI



struct Home_Screen: View {
    
    @State private var showingNewOrderPage = false
    @State private var StockEntered: String = ""
    
    
    var body: some View {
        VStack{
//            Section {
//                Text("\(Portfolio.shared.value)")
//            }
            Section {
                Text("Total Portfolio Value is \(Portfolio.shared.value)")
                
                Button("New Order") {
                    showingNewOrderPage.toggle()
                }
                .padding(100.0)
                .sheet(isPresented: $showingNewOrderPage) {
                    Section {
                        Form{
                            TextField("Enter Stock Name", text: $StockEntered)
                            
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
