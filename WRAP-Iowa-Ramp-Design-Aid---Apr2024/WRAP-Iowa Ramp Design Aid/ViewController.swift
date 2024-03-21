//
//  ViewController.swift
//  WRAP-Iowa Ramp Design Aid
//
//  Created by Joseph Knight on 1/31/20.
//  Copyright © 2020 Joseph Knight. All rights reserved.
//
// Need to resolve side to side motion
import UIKit
import SafariServices

class ViewController: UIViewController, UITextFieldDelegate
{
    @IBOutlet weak var txtNumber: UITextField!
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        //--- add UIToolBar on keyboard and Done button on UIToolBar ---//
        self.addDoneButtonOnKeyboard()
    }
    
    // move the text and logo out of the way to let the user see the text entry fields when the keyboard pops up
    func addDoneButtonOnKeyboard()
    {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect(x: 0, y: 0, width: 320, height: 50))
        doneToolbar.barStyle = UIBarStyle.default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: UIBarButtonItem.SystemItem.flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Aceptar", style: UIBarButtonItem.Style.done, target: self, action: Selector(("doneButtonAction")))
        
        var items = [UIBarButtonItem]()
        items.append(flexSpace)
        items.append(done)
        
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.txtNumber.inputAccessoryView = doneToolbar
    }
    
//    func doneButtonAction()
//    {
//        self.txtNumber.resignFirstResponder()
//    }
//
//    @IBAction func test(_ sender: UIButton) {
//    }
    
    
}
