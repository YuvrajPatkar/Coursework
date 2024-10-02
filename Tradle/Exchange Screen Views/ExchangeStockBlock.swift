//
//  ExchangeStockBlock.swift
//  Tradle
//
//  Created by Patkar, Yuvraj (NA) on 02/10/2024.
//

import SwiftUI


@State var testStockData = StockDataResults(name: "Apple", price: 35)
struct ExchangeStockBlock: View {
    
    let stock: StockDataResults
    
    var body: some View {
        VStack {
            Text(testStockData.name)
            Text(testStockData.price)
        }
        
    }
}

#Preview {
    ExchangeStockBlock()
}
