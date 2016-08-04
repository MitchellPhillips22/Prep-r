//
//  SuppliesViewController.swift
//  Prep'r
//
//  Created by Mitchell Phillips on 7/31/16.
//  Copyright © 2016 MitchellPhillips. All rights reserved.
//

import UIKit

class SuppliesViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var categoryArray = [Category]()
    var currentCategory: Category?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        seedArray() 
    }
    func seedArray() {
        
        self.categoryArray = [
            Category(name: "Food"),
            Category(name: "Water"),
            Category(name: "First Aid"),
            Category(name: "Tools"),
            Category(name: "Clothes"),
            Category(name: "Power"),
            Category(name: "Miscellaneous")
        ]
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categoryArray.count
    }
    func tableView(tableView: UITableView, didSelectRowAtIndexPath indexPath: NSIndexPath) {
        self.currentCategory = categoryArray[indexPath.row]
        self.performSegueWithIdentifier("categorySegue", sender: self)
    }
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "categorySegue" {
            let categoryViewController = segue.destinationViewController as! CategoryViewController
            categoryViewController.currentCategory = self.currentCategory
        }
    }
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("supplyCell") as! SuppliesTableViewCell
        let category = categoryArray[indexPath.row]
        cell.supplyCategoryLabel.text = category.name
        return cell
    }

}
