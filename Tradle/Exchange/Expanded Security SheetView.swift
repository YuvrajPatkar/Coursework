//
//  Expanded Security SheetView.swift
//  Tradle
//
//  Created by Yuvraj Rahul Patkar on 08/11/2024.
//

import SwiftUI



struct Expanded_Security_SheetView: View {

    var stock: StockFinancialData
    
    var body: some View {
        VStack{
            Text(stock.name)
                .font(.system(size: 40, weight: .bold))
            Text("Current Price: \(stock.price)")
                .font(.system(size: 20))
            Text("Percentge Change:  \(stock.changesPercentage)")
            Text("Points Change: \(stock.change)")
            Text("Market Cap: \(stock.marketCap)")
            Text("Volume: \(stock.volume)")
               
                
            
        }
    }
}


