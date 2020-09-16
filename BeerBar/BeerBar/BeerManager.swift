//
//  BeerManager.swift
//  BeerBar
//
//  Created by Alexander Kononok on 9/12/20.
//  Copyright © 2020 Alexander Kononok. All rights reserved.
//

import Foundation

class BeerManager {
    static let shared = BeerManager()
    private init () {}
    
    private var proceeds: Double = 0
    
    private let beerPaulaner = Beer(name: "Paulaner", price: 3, countryOfOrigin: "Germany", amount: 2)
    private let beerZalatoe = Beer(name: "Zalatoe", price: 1.5, countryOfOrigin: "Belarus", amount: 3)
    
    func getProceeds() {
        print("Proceeds: \(proceeds)")
    }
    
    func resetProceeds() {
        self.proceeds = 0
    }
    
    func resetBeer() {
        beerZalatoe.amount = 3
        beerPaulaner.amount = 2
    }
    
    func getAmountBeer() {
        print("Amount of beer \(beerPaulaner.name): \(beerPaulaner.amount)")
        print("Amount of beer \(beerZalatoe.name): \(beerZalatoe.amount)")
    }
    
    func buyBeerPaulaner() {
        if beerPaulaner.amount != 0 {
            beerPaulaner.amount -= 0.5
            proceeds += beerPaulaner.price
            print("You bought beer \(beerPaulaner.name) country origin \(beerPaulaner.countryOfOrigin) for $\(beerPaulaner.price)")
        } else {
            print("Beer \(beerPaulaner.name) is over.")
        }
    }
    
    func buyBeerZalatoe() {
        if beerZalatoe.amount != 0 {
            beerZalatoe.amount -= 0.5
            proceeds += beerZalatoe.price
            print("You bought beer \(beerZalatoe.name) country origin \(beerZalatoe.countryOfOrigin) for $\(beerZalatoe.price)")
        } else {
            print("Beer \(beerZalatoe.name) is over.")
        }
    }
    
}
