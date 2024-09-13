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
            Section {
                Button("New Order") {
                    showingNewOrderPage.toggle()
                }
                .sheet(isPresented: $showingNewOrderPage) {
                    Section {
                        Form{
                            TextField("remove Stock Name", text: $StockEntered)
                            
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
