//
//  API .swift
//  Tradle
//
//  Created by Patkar, Yuvraj (NA) on 25/09/2024.
//

import Foundation

import Foundation

class FinancialDataAPI: ObservableObject {
    
    static let shared = FinancialDataAPI()
    @Published var stockFinancialData: StockFinancialData?
    
    func getFinancialData(symbol: String, completion: @escaping (Bool) -> Void) {
        let api = "Myo2pcrlppoyoozlJ3M3MEqWtc43gs6L"
        let urlstring = "https://financialmodelingprep.com/api/v3/quote/\(symbol)?apikey=\(api)"


    }

    
    
   
    
}

