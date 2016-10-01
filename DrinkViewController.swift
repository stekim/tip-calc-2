//
//  DrinkViewController.swift
//  tip calc 2
//
//  Created by Steve Kim on 9/30/16.
//  Copyright © 2016 Steve Kim. All rights reserved.
//

import UIKit

class DrinkViewController: UIViewController {

    @IBOutlet weak var totalBill: UILabel!

    @IBOutlet weak var costofdrinkField: UITextField!
    
    @IBOutlet weak var drunkpeopleField: UITextField!
    
    @IBOutlet weak var soberpeopleField: UITextField!
    @IBOutlet weak var drinkerbillLabel: UILabel!
    @IBOutlet weak var nondrinkerbillLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let defaults = NSUserDefaults.standardUserDefaults()
        if let stringf = defaults.stringForKey(ViewController.predrinkTotal){
            totalBill.text = stringf
        }
        
        

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func calculateseparateButton(sender: AnyObject) {
        
        var billAgain = "string"
        
        let defaults = NSUserDefaults.standardUserDefaults()
        if let stringf = defaults.stringForKey(ViewController.predrinkTotal){
            billAgain = stringf
        }
        
        var drunkPpl = Float(drunkpeopleField.text!)
        var soberPpl = Float(soberpeopleField.text!)
        var costDrinks = Float(costofdrinkField.text!)
        var totBill = Float(totalBill.text!)
        
        nondrinkerbillLabel.text = (String(Float(billAgain)))
        
        drinkerbillLabel.text = nondrinkerbillLabel.text
    }
  
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
  

}





