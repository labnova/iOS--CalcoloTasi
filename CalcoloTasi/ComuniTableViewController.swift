//
//  ComuniTableViewController.swift
//  CalcoloTasi
//
//  Created by Innocenzo Tremamondo on 13/01/15.
//  Copyright (c) 2015 LabNova. All rights reserved.
//

import UIKit

class ComuniTableViewController: UITableViewController {
    
   // @IBOutlet weak var autoCompleteTextView: UITextField!
    

    override func viewDidLoad() {
        super.viewDidLoad()

//        autoCompleteTextView.delegate = self
//        autoCompleteTextView.dataSource = self
//        autoCompleteTextView.scrollEnabled = true
//        autoCompleteTextView.hidden = true
    }
    
    
//    func searchAutocompleteEntriesWithSubstring(substring: String)
//    {
//        autocompleteUrls.removeAll(keepCapacity: false)
//        
//        for curString in pastUrls
//        {
//            var myString: NSString! = curString as NSString
//            var substringRange : NSRange! = myString.rangeOfString(substring)
//            
//            if(substringRange.location == 0) {
//                autocompleteUrls.append(curString)
//            }
//        }
//        
//        autocompleteTextView.reloadData()
//    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 0
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
       return 0  //autocompleteUrls.count
    }

    
//    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
//        let autoCompleteRowIdentifier = "AutoCompleteRowIdentifier"
//        var cell : UITableViewCell = tableView.dequeueReusableCellWithIdentifier(autoCompleteRowIdentifier, forIndexPath: indexPath) as UITableViewCell
//        let index = indexPath.row as Int
//        
//        cell.textLabel.text = autocompleteUrls[index]
//        return cell    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
