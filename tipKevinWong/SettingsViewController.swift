//
//  SettingsViewController.swift
//  tipKevinWong
//
//  Created by Kevin Wong on 7/31/20.
//  Copyright © 2020 Codepath. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var firstTipField: UITextField!
    @IBOutlet weak var secondTipField: UITextField!
    @IBOutlet weak var thirdTipField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func updateTip(_ sender: Any) {
        // Access UserDefaults
           let defaults = UserDefaults.standard;
           
           // Set the new tip value
           defaults.set(firstTipField.text, forKey: "newTip1")
           defaults.set(secondTipField.text, forKey: "newTip2")
           defaults.set(thirdTipField.text, forKey: "newTip3")
           
           // Force UserDefaults to save
           defaults.synchronize()
           
    }
   

}
