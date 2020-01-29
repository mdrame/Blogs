//
//  ViewController.swift
//  UIButtonImageChangeOnClick
//
//  Created by Mohammed Drame on 12/15/19.
//  Copyright © 2019 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // ---------------------------------- //
    // - - - - - - -  VARS - - - - - - -  //
    // ---------------------------------- //
    
    var isOn: Bool = false
    
    
    // ---------------------------------- //
    // - - - - - - -  OUTLETS - - - - - - //
    // ---------------------------------- //
    
    
    
    // ---------------------------------- //
    // - - - - - - - ACTION - - - - - - - //
    // ---------------------------------- //
    
    @IBAction func buttonPress(_ sender: UIButton) {
        // "Use this method to toggle a Boolean value from true to false or from false to true." [ Apple Doc ]
        isOn.toggle()
        // call Button function
        setButtonBackGround(view: sender, on: #imageLiteral(resourceName: "like"), off: #imageLiteral(resourceName: "unlike"), onOffStatus: isOn)
        
        
    }
    
    // Button Function ( Can also add to custome class )
    
    func setButtonBackGround(view: UIButton, on: UIImage, off: UIImage, onOffStatus: Bool ) {
        
        switch onOffStatus {
        case true:
            // Chnage backgroundImage to hart image
            view.setImage(on, for: .normal)
            // Test
            print("Button Pressed")
        default:
            view.setImage(off, for: .normal)
            print("Button Unpressed")
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

