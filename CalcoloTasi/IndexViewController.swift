//
//  IndexViewController.swift
//  CalcoloTasi
//
//  Created by Innocenzo Tremamondo on 13/01/15.
//  Copyright (c) 2015 LabNova. All rights reserved.
//

import UIKit
import Foundation

extension String {
    func format(f: String) -> String {
        return NSString(format: "%\(f)f", self)
    }
}

class IndexViewController: UIViewController, UITextFieldDelegate  {
    
  
    @IBOutlet weak var possesso: UISlider!
    
    @IBOutlet weak var renditaCatastaleText: UITextField!
    @IBOutlet weak var aliquotaTextField: UITextField!
    
    @IBOutlet weak var possessoText: UILabel!
    
    var Comuni = ["Aosta", "Torino", "Milano", "Trento", "Venezia", "Trieste", "Genova",
        "Bologna", "Firenze", "Perugia", "Ancona", "L\'Aquila", "Roma", "Campobasso", "Napoli",
        "Potenza", "Bari", "Catanzaro", "Palermo", "Cagliari", "Trapani"]
    
    var autoCompleteUrls = [String]()
    
    
   
   /** ---properties di sistema ---**/
   
    
    var rC: Double!
    var aliquota:Double!
    var baseImponibile: Double!
    var impostaLorda: Double!
    var quotaPossesso:Double!
    var baseImponibileInt: Int!
    
  
    var rataAcconto: Double!
    var rataSaldo: Double!
   
    var renditaCatastaleT: String!
    var aliquotaText: String!
    var rataAccontoText : String!
    var rataSaldoText : String!
    
    /** --- fine properties di sistema ---**/
    
    
    /** ---func di sistema ---**/
    
    func castingString(var d: Double) -> String {
        var c: String = String(format:"%f", d)
        return c
    }
    
    func Castingdouble(var c:String) -> Double {
        var d: Double!
        d = NSString(string:c).doubleValue
        return d
    }
    
    func rivalutazione(var rc: Double) -> Double {
        
        var magg : Double
        magg = rC * 5 / 100
        rc = rc + magg
        return rc
    }
    
    
    
   
    
    func textField(textField: UITextField,
        shouldChangeCharactersInRange range: NSRange,
        replacementString string: String) -> Bool {
            
            // Create an `NSCharacterSet` set which includes everything *but* the digits
            let inverseSet = NSCharacterSet(charactersInString:"0123456789").invertedSet
            
            // At every character in this "inverseSet" contained in the string,
            // split the string up into components which exclude the characters
            // in this inverse set
            let components = string.componentsSeparatedByCharactersInSet(inverseSet)
            
            // Rejoin these components
            let filtered = join("", components)
            
            // If the original string is equal to the filtered string, i.e. if no
            // inverse characters were present to be eliminated, the input is valid
            // and the statement returns true; else it returns false
            return string == filtered
            
    }
    
    
    /** --- fine func di sistema ---**/
  
    
    
    //    rC.value  = NSString(string:rCText).doubleValue
    //    aliquota.value = NSString(string:alText).doubleValue

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        possesso.minimumValue = 0
        possesso.maximumValue = 100
        possesso.value = 100
        
        possesso.addTarget(self,
            action: "valoreCambiatoSlider:",
            forControlEvents:UIControlEvents.ValueChanged)
    }
    
 

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    
   
    
    func valoreCambiatoSlider(sender:UISlider!) {
        if(sender == possesso) {
            var possessoValText = String()
            var possessoInt = Int(possesso.value)
            
            
            
            self.possessoText.text = String(possessoInt)
        }
    }
  

    @IBAction func calcola(sender: AnyObject) {
        
        rC = Castingdouble(renditaCatastaleText.text)
        aliquota = Castingdouble(aliquotaTextField.text)
        
        
        baseImponibile = rivalutazione(rC)*160
        
        if (possesso.value != 100) {
            
            quotaPossesso = (baseImponibile * Double(possesso.value)) / 100
            baseImponibile = quotaPossesso;
        }
        
        impostaLorda = (baseImponibile * aliquota) / 1000
        
//        if (m != 12) {
//            double impLordSingoloMese = 1.00;
//            impLordSingoloMese = impostaLorda /12;
//            impostaLorda = impLordSingoloMese * m;
//            
//        }
        
        rataAcconto = impostaLorda / 2
        rataSaldo = rataAcconto
        
        
    }
    
    
    
    
    
   
    
   
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
       
        if(segue.identifier == "showRisultati") {
            var risultatiVC: risultatiViewController = segue.destinationViewController as risultatiViewController
            let formato = ".3"
            baseImponibileInt = Int(baseImponibile)
            
            renditaCatastaleT = String(baseImponibileInt)
            renditaCatastaleT.format(formato)
            
        
            aliquotaText = castingString(impostaLorda)
            aliquotaText = NSString(format: "%.2f", aliquotaText)
            rataAccontoText = castingString(rataAcconto)
            //rataAccontoText = NSString(format: "%.2f", rataAccontoText)
            rataSaldoText = castingString(rataSaldo)
            //rataSaldoText = NSString(format: "%.2f", rataSaldoText)

            
            risultatiVC.baseImponibile = renditaCatastaleT
            risultatiVC.aliquotaR = aliquotaText
            risultatiVC.rataAcconto = rataAccontoText
            risultatiVC.rataSaldo = rataSaldoText
            
            
        
           
            
        }
        
        
    
        
        
        
    }
    
    
}
