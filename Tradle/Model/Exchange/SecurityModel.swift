//
//  Security.swift
//  Tradle
//
//  Created by Yuvraj Rahul Patkar on 26/09/2024.
//

import Foundation

class SecurityModel {
    var data: StockFinancialData
    
    init(securitySymbol: String) {
        let api = FinancialDataAPI()
        data = api.getFinancialData(symbol: securitySymbol, completion: <#T##(Bool) -> Void#>)
    }
        
        
        
        
        
    
    
    
    
    
    
}
