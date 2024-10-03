//
//  ExchangeStockBlockView.swift
//  Tradle
//
//  Created by Yuvraj Rahul Patkar on 03/10/2024.
//

import SwiftUI


@State var testStockData = StockDataResults(name: "Apple", price: 35)


struct ExchangeStockBlockView: View {
    
    let stock: StockDataResults
    var body: some View {
            VStack {
                Text(testStockData.name)
                Text(testStockData.price)
            }
            
        }
}

#Preview {
    ExchangeStockBlockView()
}
