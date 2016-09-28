//
//  ViewController.swift
//  tip calc 2
//
//  Created by Steve Kim on 9/25/16.
//  Copyright © 2016 Steve Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentage: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
   
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        
        let defaults = NSUserDefaults.standardUserDefaults()
        defaults.synchronize()
        let tValue = defaults.objectForKey("newTip")
        let intValue = defaults.integerForKey("fake_int")
        print ("this is the int ", intValue)
        print ("this is the string", tValue)
        
        print("view did appear")
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func calculateTip(sender: AnyObject) {
        
        let tip_percentages = [0.18,0.2,0.22]
        let bill = Double(billField.text!) ?? 0
        let tip =  bill * tip_percentages[tipControl.selectedSegmentIndex]
        let total = bill + tip
        billLabel.text = "$\(bill)"
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"

        

    }

}

