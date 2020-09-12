//
//  Beer.swift
//  BeerBar
//
//  Created by Alexander Kononok on 9/12/20.
//  Copyright © 2020 Alexander Kononok. All rights reserved.
//

import Foundation

class Beer {
    var name: String
    var price: Double
    var countryOfOrigin: String
    var amount: Double
    
    init(name: String, price: Double, countryOfOrigin: String, amount: Double) {
        self.name = name
        self.price = price
        self.countryOfOrigin = countryOfOrigin
        self.amount = amount
    }
    
}
