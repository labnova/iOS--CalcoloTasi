//
//  PrimaTableViewController.swift
//  CalcoloTasi
//
//  Created by Innocenzo Tremamondo on 23/01/15.
//  Copyright (c) 2015 LabNova. All rights reserved.
//

import UIKit

class PrimaTableViewController: UITableViewController {
    
    var tipologie = [String]()
    var caratteristiche = [caratteristicheTipologie]()

    override func viewDidLoad() {
        super.viewDidLoad()
     
       tipologie = [ "Abitazione principale","Abitazione di pregio", "Uffici e studi privati",
           "Gruppo B, tutte le categorie (da B/1 a B/8)",
            "Negozi e Botteghe",
      "Cantine, Soffitte, Magazzini, Locali di deposito ",
       "Laboratorio per arti e mestieri",
      "Locali per esercizi sportivi senza fine di lucro",
       "stabilimenti balneari e termali senza fine di lucro",
       "garage, rimesse, stalle, scuderie senza fine di lucro",
      "tettorie chiuse o aperte",
       "Gruppo D (tranne D/5 e D/10)",
        "istituti di credito e assicurazioni",
      "fabbricati rurali strumentali all'agricoltura",
       "fabbricati rurali non strumentali",
       "Aree fabbricabili",
       ]
        
        
        caratteristiche = [
            caratteristicheTipologie(info:["categoria:A","aliquota:160"], Pic:""),
            caratteristicheTipologie(info:["categoria:A","aliquota:160"], Pic:""),
            caratteristicheTipologie(info:["categoria:A/10","aliquota:88"], Pic:""),
           caratteristicheTipologie(info:["categoria:B","aliquota:140"], Pic:""),
            caratteristicheTipologie(info:["categoria:C/1","aliquota:55"], Pic:""),
            caratteristicheTipologie(info:["categoria:C/2","aliquota:160"], Pic:""),
            caratteristicheTipologie(info:["categoria:C/3","aliquota:140"], Pic:""),
            caratteristicheTipologie(info:["categoria:C/4","aliquota:140"], Pic:""),
            caratteristicheTipologie(info:["categoria:C/5","aliquota:140"], Pic:""),
            caratteristicheTipologie(info:["categoria:C/6","aliquota:160"], Pic:""),
            caratteristicheTipologie(info:["categoria:C/7","aliquota:160"], Pic:""),
            caratteristicheTipologie(info:["categoria:D","aliquota:65"], Pic:""),
            caratteristicheTipologie(info:["categoria:D/5","aliquota:80"], Pic:""),
            caratteristicheTipologie(info:["categoria:D/10","aliquota:65"], Pic:""),
            caratteristicheTipologie(info:["categoria:NP.","aliquota:65"], Pic:""),
            caratteristicheTipologie(info:["categoria:NP.","aliquota:65"], Pic:""),
        ]
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return tipologie.count
    }
   
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        var Cell = self.tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as UITableViewCell
        
        Cell.textLabel.text = tipologie[indexPath.row]
        return Cell
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if (segue.identifier == "tabella") {
          
            
        var indexPath : NSIndexPath = self.tableView.indexPathForSelectedRow()!
        
        var DestViewController = segue.destinationViewController as secondaTableViewController
        
        var passaggio : caratteristicheTipologie
        
        passaggio = caratteristiche[indexPath.row]
        
        DestViewController.aliquoteFissate = passaggio.info
     
        }
    }

}
