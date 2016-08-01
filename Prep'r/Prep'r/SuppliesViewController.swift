//
//  SuppliesViewController.swift
//  Prep'r
//
//  Created by Mitchell Phillips on 7/31/16.
//  Copyright © 2016 MitchellPhillips. All rights reserved.
//

import UIKit

class SuppliesViewController: UIViewController {

    var suppliesArray = [Supply]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    func seedArray() {
        
        self.suppliesArray = [
            Supply(name: "Food"),
            Supply(name: "Water"),
            Supply(name: "First Aid"),
            Supply(name: "Tools"),
            Supply(name: "Clothes"),
            Supply(name: "Power"),
            Supply(name: "Miscellaneous")
        ]
    }
    

}
