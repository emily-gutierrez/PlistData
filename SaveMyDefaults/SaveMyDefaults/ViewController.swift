//
//  ViewController.swift
//  SaveMyDefaults
//
//  Created by Emily Gutierrez on 8/19/20.
//  Copyright © 2020 Emily Gutierrez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func mySaveButton(_ sender: Any) {
        
    UserDefaults.standard.set(mySerialNumber.text, forKey: "Text")
    UserDefaults.standard.set(mySwitch.isOn, forKey: "Switch")
    UserDefaults.standard.set(mySlider.value, forKey: "Slider")
    }
    
    @IBAction func myLoadButton(_ sender: Any) {
        mySwitch.isOn = UserDefaults.standard.bool(forKey: "Switch")
        mySlider.value = UserDefaults.standard.float(forKey: "Slider")
        mySerialNumber.text = UserDefaults.standard.string(forKey: "Text")
       
    }
    
    @IBAction func myDeleteButton(_ sender: Any) {
        mySwitch.isOn = true
        mySlider.value = 0.5
        mySerialNumber.text = ""
        
    }
    

    @IBOutlet var mySerialNumber: UITextField!
    
    
    @IBOutlet var mySlider: UISlider!
    
    
    
    @IBOutlet var mySwitch: UISwitch!
    
    override func viewDidLoad() {
  super.viewDidLoad()
  // Do any additional setup after loading the view.

}
}
