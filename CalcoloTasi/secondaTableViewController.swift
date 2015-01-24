//
//  secondaTableViewController.swift
//  CalcoloTasi
//
//  Created by Innocenzo Tremamondo on 23/01/15.
//  Copyright (c) 2015 LabNova. All rights reserved.
//

import UIKit
import Foundation

class secondaTableViewController: UITableViewController {
    
    var aliquoteFissate = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

   

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return aliquoteFissate.count
    }

    

    
    
   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var Cell = self.tableView.dequeueReusableCellWithIdentifier("Info", forIndexPath: indexPath) as UITableViewCell

        // Configure the cell...
        Cell.textLabel.text = aliquoteFissate[indexPath.row]

        return Cell
    }
    

    
}
