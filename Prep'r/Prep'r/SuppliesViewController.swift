//
//  SuppliesViewController.swift
//  Prep'r
//
//  Created by Mitchell Phillips on 7/31/16.
//  Copyright © 2016 MitchellPhillips. All rights reserved.
//

import UIKit

class SuppliesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var suppliesArray = [Supply]()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        seedArray() 
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
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return suppliesArray.count
    }
//    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
//        <#code#>
//    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("supplyCell") as! SuppliesTableViewCell
        let category = suppliesArray[indexPath.row]
        cell.supplyCategoryLabel.text = category.name
        return cell
    }

}
