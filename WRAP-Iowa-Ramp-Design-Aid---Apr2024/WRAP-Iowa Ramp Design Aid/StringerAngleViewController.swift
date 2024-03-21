//
//  StringerAngleViewController.swift
//  WRAP-Iowa Ramp Design Aid
//
//  Created by Joseph Knight on 2/5/20.
//  Copyright © 2020 Joseph Knight. All rights reserved.
//

import UIKit

// determine the angle that the stringer needs to be cut for the stringers
class StringerAngleViewController: UIViewController, UITextFieldDelegate
{
    
    @IBOutlet weak var lengthFirstPart: UITextField!
    @IBOutlet weak var lengthSecondPart: UITextField!
    @IBOutlet weak var heightFirstPart: UITextField!
    @IBOutlet weak var heightSecondPart: UITextField!
    
    @IBOutlet weak var cutAngleLable: UILabel!
    @IBOutlet weak var totalRunLabel: UILabel!
    
    @IBOutlet weak var AngleScrollView: UIScrollView!
    
    // Add to dismiss keyboard
    @objc func dismissKeyboard() {
        view.endEditing(true)
    }
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        
        cutAngleLable.text = "0"
        totalRunLabel.text = "0"
        

        
    }
    
    //move textfiields
    func textFieldDidBeginEditing(_ textField: UITextField) {
        AngleScrollView.setContentOffset(CGPoint(x: 0, y: 250),animated: true)
    }
    
    @IBAction func CalcRisers(_ sender: UIButton)
    {
        // Add a "DONE" button to the keyboard toolbar
        let toolbar = UIToolbar()
        toolbar.sizeToFit()
        let flexibleSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let doneButton = UIBarButtonItem(barButtonSystemItem: .done, target: self, action: #selector(dismissKeyboard))
        toolbar.items = [flexibleSpace, doneButton]
        
        // Additions for DONE button
        lengthFirstPart.inputAccessoryView = toolbar
        lengthSecondPart.inputAccessoryView = toolbar
        heightFirstPart.inputAccessoryView = toolbar
        heightSecondPart.inputAccessoryView = toolbar
        
        
        let stringerLength1 = Double(lengthFirstPart.text!)
        var stringerLength2 = Double(lengthSecondPart.text!)
        
        if stringerLength2 == nil {
            stringerLength2 = 0.0
        }
        
        stringerLength2 = Double(stringerLength2!)/16
        let stringerTotalLength = Double(stringerLength1!) + Double(stringerLength2!)
        let stringerHeight1 = Double(heightFirstPart.text!)
        var stringerHeight2 = Double(heightSecondPart.text!)
        
        if stringerHeight2 == nil {
            stringerHeight2 = 0.0
        }
        
        stringerHeight2 = Double(stringerHeight2!)/16
        let stringerTotalHeight = Double(stringerHeight1!) + Double(stringerHeight2!)
        
        //return scrollview to normal position
    //    self.lengthFirstPart.resignFirstResponder()
    //    self.lengthSecondPart.resignFirstResponder()
     //   self.heightFirstPart.resignFirstResponder()
    //    self.heightSecondPart.resignFirstResponder()
      

        
        AngleScrollView.setContentOffset(CGPoint(x: 0, y: 350),animated: true)
        
       // let cutAngle = Int(asin(stringerTotalHeight/stringerTotalLength)*180/3.1416)
        let cutAngle = asin(stringerTotalHeight/stringerTotalLength)*180/3.1416
        let formattedCutAngle = String(format: "%.1f", cutAngle)
        
        // this is the horizontal distance covered by the stringer that is at an angle
        let horizRun = Int(sqrt(pow(stringerTotalLength, 2) - pow(stringerTotalHeight,2)))
        
        cutAngleLable.text = String(formattedCutAngle) + String("   Degrees")
        totalRunLabel.text = String(horizRun) + String(" inches")
    }
}
