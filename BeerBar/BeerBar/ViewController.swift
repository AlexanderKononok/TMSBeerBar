//
//  ViewController.swift
//  BeerBar
//
//  Created by Alexander Kononok on 9/12/20.
//  Copyright © 2020 Alexander Kononok. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var buyBeerPaulanerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func boughtBeerPaulanerButton(_ sender: Any) {
        BeerManager.shared.buyBeerPaulaner()
    }
    
    @IBAction func boughtBeerZalatoeButton(_ sender: Any) {
        BeerManager.shared.buyBeerZalatoe()
    }
    
    @IBAction func startNewShift(_ sender: Any) {
        print("******** New shift ***********")
        BeerManager.shared.getProceeds()
        BeerManager.shared.getAmountBeer()
        BeerManager.shared.resetProceeds()
        //BeerManager.shared.getProceeds()
        BeerManager.shared.resetBeer()
        print("******************************")
    }
}

