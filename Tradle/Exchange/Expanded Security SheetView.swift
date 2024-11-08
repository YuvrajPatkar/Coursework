//
//  Expanded Security SheetView.swift
//  Tradle
//
//  Created by Yuvraj Rahul Patkar on 08/11/2024.
//

import SwiftUI

let apple = Security(stockName: "Apple", stockPrice: 543.2)

struct Expanded_Security_SheetView: View {

    var stock: Security
    
    var body: some View {
        VStack{
            Text(stock.stockName)
                .font(.system(size: 24, weight: .bold))
                
            
        }
    }
}

#Preview {
    Expanded_Security_SheetView(stock: apple)
}
