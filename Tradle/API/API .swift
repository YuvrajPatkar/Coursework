//
//  API .swift
//  Tradle
//
//  Created by Patkar, Yuvraj (NA) on 25/09/2024.
//

//import Foundation
//
//class FinancialDataAPI: ObservableObject {
//    static let shared = FinancialDataAPI()
//    @Published var stockFinancialData: StockFinancialData?
//    
//    func getFinancialData(symbol: String, completion: @escaping (Bool) -> Void) {
//        let apiToken = "Myo2pcrlppoyoozlJ3M3MEqWtc43gs6L"
//        let urlstring = "https://financialmodelingprep.com/api/v3/quote/\(symbol)?apikey=\(apiToken)"
//        
//        guard let url = URL(string: urlstring) else {
//            DispatchQueue.main.async {
//                completion(false)
//            }
//            return
//        }
//        
//        URLSession.shared.dataTask(with: url) { data, response, error in
//            if let error = error {
//                print("Error fetching data : \(error.localizedDescription)")
//                DispatchQueue.main.async {
//                    completion(false)
//                }
//                return
//            }
//            
//            if let data = data {
//                do {
//                    let response = try JSONDecoder().decode([stockFinancialData].self, from: data)
//                    DispatchQueue.main.async {
//                        self.stockFinancialData = response.first
//                        completion(true)
//                    }
//                } catch {
//                    print("Error decoding data: \(error.localisedDescription)")
//                    DispatchQueue.main.async {
//                        completion(false)
//                    }
//                }
//            }
//        }.resume()
//    }
//}
