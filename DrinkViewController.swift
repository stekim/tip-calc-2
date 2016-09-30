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
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
