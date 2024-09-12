//
//  Home Screen.swift
//  Tradle
//
//  Created by Patkar, Yuvraj (NA) on 06/09/2024.
//

import SwiftUI



struct Home_Screen: View {
    
    @State private var showingNewOrderPage = false
    
    var body: some View {
        Section {
            Button("New Order") {
                showingNewOrderPage.toggle()
            }
            .sheet(isPresented: $showingNewOrderPage) {
                Button("Confirm Order") {
                    showingNewOrderPage.toggle()
                }
            }
        }
    }
}
#Preview {
    Home_Screen()
}
