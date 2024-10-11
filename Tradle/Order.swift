//
//  Order.swift
//  Tradle
//
//  Created by Yuvraj Rahul Patkar on 09/10/2024.
//

import Foundation

class order {
    var security: Security
    var orderType: Bool
    var quantity: Double
    
    init(security: Security, orderType: Bool, quantity: Double) {
        self.security = security
        self.orderType = orderType
        self.quantity = quantity
    }
    
    
}
