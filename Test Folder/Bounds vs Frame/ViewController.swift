//
//  ViewController.swift
//  Bounds vs Frame
//
//  Created by Mohammed Drame on 1/21/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // label outlet
    @IBOutlet var rotateText: UILabel!
    
    @IBOutlet var frameLabel: UILabel!
    @IBOutlet var boundsLabel: UILabel!
    
    // button outlet
    @IBOutlet var rotateButtonOutlet: UIButton!
    @IBOutlet var resetButtonOutlet: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        rotateText.layer.cornerRadius =  35
        rotateText.clipsToBounds = true
        
        rotateButtonOutlet.layer.cornerRadius =  56
        //rotateText.clipsToBounds = true
        
        resetButtonOutlet.layer.cornerRadius =  10
        
        values()
        
    }
    
    
    // property observer to change the frame and bounds label
//    var frameObserver: CGFloat = 0 {
//        willSet {
//            frameLabel.text = "\(newValue)"
//        }
//    }
    
    func values() {
        print("Frmae: \(rotateText.frame)")
        print("Bounds: \(rotateText.bounds)")
    }

    
    
    
    
    // actions
    
    @IBAction func rotatebuttonPressed(_ sender: UIButton) {
        
        // rotate function
       rotateLable()
        
        
        
    }
    
    
    @IBAction func resetValues(_ sender: UIButton) {
        reset()
    }
    
    func rotateLable() {
        // animating
        UIView.animate(withDuration: 0.5) {
            // rotate label
            self.rotateText.transform = CGAffineTransform(rotationAngle: 5.0)
            
            // lable ui
            self.changeValues()
            }
        }
    
    func reset() {
        UIView.animate(withDuration: 0.5) {
            self.rotateText.transform = CGAffineTransform(rotationAngle: 0.0)
            
            // lable ui
            self.changeValues()
                   }
    }
    
    
    func changeValues() {
        frameLabel.text = "Frame: \(rotateText.frame)"
        boundsLabel.text = "Bounds: \(rotateText.bounds)"
    }

    
    
    
    
    
}


//
//extension ViewController {
//
//
//
//
//
//
//
//
//
//
//}
