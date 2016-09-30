//
//  ViewController.swift
//  tip calc 2
//
//  Created by Steve Kim on 9/25/16.
//  Copyright © 2016 Steve Kim. All rights reserved.
//

import UIKit
extension Float {
    var cleanValue: String {
        return self % 1 == 0 ? String(format: "%.0f", self) : String(self)
    }
}

class ViewController: UIViewController {
    @IBOutlet weak var billLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var tipPercentage: UILabel!
    
    @IBOutlet weak var tipControl: UISegmentedControl!
    @IBOutlet weak var billField: UITextField!
   
    @IBOutlet weak var exclamationPhrases: UILabel!
    
    
    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        billField.becomeFirstResponder()
       
        
    }
    
    override func viewDidAppear(animated: Bool) {
        super.viewDidAppear(animated)
        let defaults = NSUserDefaults.standardUserDefaults()
        if let stringf = defaults.stringForKey(SettingsViewController.key){
            tipPercentage.text = stringf
        }
    }
    
    override func viewDidDisappear(animated: Bool) {
        super.viewDidDisappear(animated)

        
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
        tipPercentage.text = (String((Float(tip_percentages[tipControl.selectedSegmentIndex])*100).cleanValue))+"%"
        billLabel.text = "$\(bill)"
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
        
        if tipControl.selectedSegmentIndex == 0{
            UIView.animateWithDuration(0.5, animations:{ self.exclamationPhrases.alpha = 1.0
            })
            exclamationPhrases.text = "Nice!"
            UIView.animateWithDuration(0.5, animations:{ self.exclamationPhrases.alpha = 0
            })
        }
        else if tipControl.selectedSegmentIndex == 1{
            UIView.animateWithDuration(0.5, animations:{ self.exclamationPhrases.alpha = 1.0
            })
            exclamationPhrases.text = "wOw!"
            UIView.animateWithDuration(0.5, animations:{ self.exclamationPhrases.alpha = 0
            })
        }
        else if tipControl.selectedSegmentIndex == 2{
            UIView.animateWithDuration(0.5, animations:{ self.exclamationPhrases.alpha = 1.0
            })
            exclamationPhrases.text = "Sugoi Senpai!!"
            UIView.animateWithDuration(0.5, animations:{ self.exclamationPhrases.alpha = 0
            })
        }
        

    }

}

