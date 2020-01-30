//
//  ViewController.swift
//  Swift Programmatic UIViews
//
//  Created by Mohammed Drame on 1/30/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
//

import UIKit

class HomeViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // View Background
        view.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        
        // adding newlly programmatic uiview to viewcontroller view
        view.addSubview(ourUIView)
        view.addSubview(ourButton)
        view.addSubview(ourUILabel)
        view.addSubview(ourUITextField)
        view.addSubview(ourUIImageView)
        
        
    }
    
    
    
    // MARK: -> Programmatic UIViews
    
    
    // MARK: -> UIView
    
    var ourUIView : UIView {
        
        
        let programmaticUIView = UIView(frame: CGRect(x: 10 , y: 90, width: view.frame.size.width / 2 + 185 , height: 100))
        programmaticUIView.backgroundColor = .green
        
        // Styling
        programmaticUIView.layer.cornerRadius = 15
        
        // Shadow
        programmaticUIView.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        programmaticUIView.layer.shadowOffset = CGSize(width: 0, height: 0)
        programmaticUIView.layer.shadowRadius =  15
        programmaticUIView.layer.shadowOpacity = 10
        
        
        return programmaticUIView
    }
    
    
    
    
    // MARK: -> Button
    
    var ourButton : UIButton {
        
        
        let programmaticUIButton = UIButton(frame: CGRect(x: 10 , y: 220, width: view.frame.size.width / 2 + 185 , height: 100))
        programmaticUIButton.backgroundColor = .red
        programmaticUIButton.setTitle("BUTTON", for: .normal)
        programmaticUIButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        
        // Styling
        programmaticUIButton.layer.cornerRadius = 15
        
        return programmaticUIButton
    }
    
    // this function funs when button is press.
    @objc func buttonPressed() {
        print("Button Pressed")
    }
    
    
    // MARK: -> UILabel
    
    var ourUILabel : UILabel {
        
        
        let programmaticUILabel = UILabel(frame: CGRect(x: 10 , y: 350, width: view.frame.size.width / 2 + 185 , height: 100))
        programmaticUILabel.backgroundColor = .yellow
        programmaticUILabel.text = "LABEL"
        programmaticUILabel.textAlignment = .center
        
        // Styling
        programmaticUILabel.layer.cornerRadius = 15
        programmaticUILabel.clipsToBounds = true
        
        
        return programmaticUILabel
    }
    
    
    // MARK: -> UITextField
    
    var ourUITextField : UITextField {
        
        
        let programmaticUITextField = UITextField(frame: CGRect(x: 10 , y: 470, width: view.frame.size.width / 2 + 185 , height: 50))
        programmaticUITextField.backgroundColor = .white
        programmaticUITextField.placeholder = " Text - Field"
        programmaticUITextField.textAlignment = .center
        
        
        // Styling
        programmaticUITextField.layer.cornerRadius = 15
        
        
        return programmaticUITextField
    }
    
    
    
    // MARK: -> UIImageView
    
    var ourUIImageView : UIImageView {
        
        
        let programmaticUIImageView = UIImageView(frame: CGRect(x: 10 , y: 550, width: view.frame.size.width / 2 + 185 , height: 300))
        
        programmaticUIImageView.image = UIImage(named: "profile-min")
        // Styling
        programmaticUIImageView.layer.cornerRadius = 15
        programmaticUIImageView.clipsToBounds = true
        return programmaticUIImageView
    }
    
    
    
}

