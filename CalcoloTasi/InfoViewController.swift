//
//  InfoViewController.swift
//  CalcoloTasi
//
//  Created by Innocenzo Tremamondo on 20/01/15.
//  Copyright (c) 2015 LabNova. All rights reserved.
//

import UIKit


class InfoViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    var url = "http://www.riscotel.it/wikiiuc/doku.php?id=wiki:iuc:tasi"
    
    override func loadView() {
        super.loadView()
        
        loadAddressURL()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
}


    func loadAddressURL() {
        
       let requestURL = NSURL(string:url)
       let request = NSURLRequest(URL:requestURL!)
       webView.loadRequest(request)
        
}

}