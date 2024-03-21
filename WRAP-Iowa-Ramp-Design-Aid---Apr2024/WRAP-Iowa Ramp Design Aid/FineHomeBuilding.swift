//
//  FineHomeBuilding.swift
//  WRAP-Iowa Ramp Design Aid
//
//  Created by Joseph Knight on 2/4/20.
//  Copyright © 2020 Joseph Knight. All rights reserved.
//

import UIKit
import SafariServices

// present a web page

class FineHomeBuilding: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    @IBAction func LaunchFineHome(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://www.finehomebuilding.com/project-guides/framing/2-rules-comfortable-stairs")! as URL, options: [:],   completionHandler: nil)
        //
    }
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}
