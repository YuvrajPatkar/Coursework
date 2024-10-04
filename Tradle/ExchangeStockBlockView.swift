//
//  ExchangeStockBlockView.swift
//  Tradle
//
//  Created by Yuvraj Rahul Patkar on 03/10/2024.
//

import SwiftUI




struct ExchangeStockBlockView: View {
    
    
    @State var StockData: Security

    var body: some View {
        
        HStack {
            
            Text(StockData.stockName)
                .font(.system(size: 24, weight: .bold))
                .frame(maxWidth: .infinity, alignment: .leading)
            
            
            Text(rounded(input:StockData.stockPrice))
                .font(.system(size: 18, weight: .medium))
                                .frame(alignment: .trailing)
                        }
                .padding()
                .background(Color(.systemGray6))
                .cornerRadius(10)
            
        
    }
}

#Preview {
    ExchangeStockBlockView(StockData: Security(stockName: "Stock Name", stockPrice: 0.0))
}
