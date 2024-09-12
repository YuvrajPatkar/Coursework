//
//  ContentView.swift
//  Tradle
//
//  Created by Patkar, Yuvraj (NA) on 06/09/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            TabView {
                Home_Screen()
                    .tabItem {
                        Label("Home", systemImage: "macpro.gen2")
                    }
                Portfolio_Screen()
                    .tabItem {
                        Label("Portfolio", systemImage: "toilet")
                    }
                Exchange_Screen()
                    .tabItem {
                        Label("Exchange", systemImage: "ferry.fill")
                    }
                History_Screen()
                    .tabItem {
                        Label("History", systemImage: "ivfluid.bag")
                    }
            }
        }
        
    }
}

#Preview {
    ContentView()
}
