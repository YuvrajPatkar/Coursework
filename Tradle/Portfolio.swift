//
//  Portfolio.swift
//  Tradle
//
//  Created by Patkar, Yuvraj (NA) on 11/09/2024.
//

import Foundation


class Portfolio: ObservableObject {
    
    static let shared = Portfolio()
    
    var value: Int = 100000
    
    
    private init() {}
    
}


