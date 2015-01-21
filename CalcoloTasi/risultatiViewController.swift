//
//  risultatiViewController.swift
//  CalcoloTasi
//
//  Created by Innocenzo Tremamondo on 17/01/15.
//  Copyright (c) 2015 LabNova. All rights reserved.
//

import UIKit
import Social
import MessageUI

class risultatiViewController: UIViewController, MFMailComposeViewControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
   
    @IBOutlet weak var corpoMessaggio: UITextView!
    
    @IBOutlet weak var baseImponibileText: UILabel!
    @IBOutlet weak var aliquotaTasiText: UILabel!
    @IBOutlet weak var rataAccontoText: UILabel!
    @IBOutlet weak var rataSaldoText: UILabel!
    
    var baseImponibile = String()
    var aliquotaR = String()
    var rataAcconto = String()
    var rataSaldo = String()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        baseImponibileText.text = baseImponibile
        aliquotaTasiText.text = aliquotaR
        rataAccontoText.text = rataAcconto
        rataSaldoText.text = rataSaldo
        
        self.imageView.animationImages = [
            UIImage(named:"copertina.jpg")!,
            UIImage(named:"copertina-2.jpg")!,
            UIImage(named:"copertina-3.jpg")!
        ]
        
        self.imageView.animationDuration = 3
        self.imageView.startAnimating()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func sendMail(sender: AnyObject) {
        var soggetto = "x importo TASI"
        var destinatari = ["progettofeb@gmail.com"]
        
        
        var corpoMessaggioText="Ti sembra giusto questo importo, calcolato in euro \(aliquotaR)?\n"
       
        var mc: MFMailComposeViewController = MFMailComposeViewController()
        mc.mailComposeDelegate = self
        mc.setSubject(soggetto)
        mc.setMessageBody(corpoMessaggioText, isHTML:false)
        mc.setToRecipients(destinatari)
       
        self.presentViewController(mc, animated:true, completion: nil)
        
        
        func mailComposeController(controller: MFMailComposeViewController!, didFinishWithResult result: MFMailComposeResult, error: NSError!) {
            switch result.value {
            case MFMailComposeResultCancelled.value:
                NSLog("mail cancellata!")
                
            case MFMailComposeResultSaved.value:
                NSLog("mail salvata")
            case MFMailComposeResultSent.value:
                NSLog("mail spedita")
            default: break
                
                
            }
            
            self.dismissViewControllerAnimated(false, completion:nil)
        }
    }
    
    
    @IBAction func shareOnTwitter(sender: AnyObject) {
        var shareToTwitter : SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeTwitter)
        shareToTwitter.setInitialText("Check out my new TASI: \(aliquotaR) " )
        shareToTwitter.addImage(UIImage(named:"icona-small.jpg"))
        self.presentViewController(shareToTwitter, animated:true, completion:nil)
    }
    
    @IBAction func shareOnFacebook(sender: AnyObject) {
        var shareToFacebook : SLComposeViewController = SLComposeViewController(forServiceType:SLServiceTypeFacebook)
        shareToFacebook.setInitialText("Check out my new TASI: \(aliquotaR) " )
        shareToFacebook.addImage(UIImage(named:"icona-small.jpg"))
        self.presentViewController(shareToFacebook, animated:true, completion:nil)
    }

}
    
    

