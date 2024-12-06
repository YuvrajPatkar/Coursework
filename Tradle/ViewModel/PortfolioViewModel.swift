//
//  PortfolioViewModel.swift
//  Tradle
//
//  Created by Patkar, Yuvraj (NA) on 06/12/2024.
//

import Foundation

class PortfolioViewModel {
    static let shared = PortfolioViewModel()
    
    var positionsList: [Position] = []
    var portfolio = Portfolio()
}
