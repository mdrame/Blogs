//
//  ViewController.swift
//  PropertyObserval
//
//  Created by Mohammed Drame on 1/6/20.
//  Copyright © 2020 Mo Drame. All rights reserved.
// The Goal of this was to make a progress hud base on property Observer

import UIKit

class ViewController: UIViewController {

    
    // ---------------- Life Circle ------------------- //
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
     
        // styles call
        // outlet shadows and radius stuff
        outletStyle()
        
        // hide redeem button when view loads
        redeemButtonOutlet.isHidden = true
        
        // hid congrast button when view load
        congratsOutlet.isHidden = true
    }
    
    
    
    
    
    // ---------------- Outlets ------------------- //
    
    @IBOutlet weak var progressBarOutlet: UIView!
    @IBOutlet weak var pointsLabelOutlet: UILabel!
    @IBOutlet weak var redeemButtonOutlet: UIButton!
    @IBOutlet weak var congratsOutlet: UILabel!
    @IBOutlet weak var pizzaImageOutlet: UIImageView!
    @IBOutlet weak var buyButtonOutlet: UIButton!
    
    
      // ---------------- Points observer ------------------- //
    // 350
    var pizzaPoint: CGFloat = 0 {
        willSet {
            UIView.animate(withDuration: 0.3) {
                self.progressBarOutlet.frame.size.width = newValue
            }
        }
    }
    
    

    
    // ---------------- Actions ------------------- //
    
    @IBAction func buyPress(_ sender: UIButton) {
        pizzaPoint += 50 // incrementing the observer every time this button is push
        print(pizzaPoint) // testing
        // this function let user know how many point they've got, by add our property observer to the label.text property.
        increasePointLable(view: pointsLabelOutlet, pointVar: Int(pizzaPoint))
        // func determines weather to show redeem button base on point acumulation
        showHideReemButton(number: Int(pizzaPoint))
        
    }
    
    
      // ---------------- Function ------------------- //
    
    func increasePointLable(view: UILabel, pointVar: Int) {
        view.text = "\(pointVar) / 350"
    }
    
    // function resets some UI component base on points acumulation
    // this func is called below only if the user reach to destinated point.
    func reset() {
        // animate outlet that are meant to be reset.
        UIView.animate(withDuration: 0.3) {
            self.pointsLabelOutlet.text = "0 / 350"
            self.redeemButtonOutlet.isHidden = true
            self.congratsOutlet.isHidden = true
            self.pizzaPoint = 0
        }
    }
    
    // explain in buyPress button
    func showHideReemButton(number: Int){
        if number == 350 {
            redeemButtonOutlet.isHidden = false
            congratsOutlet.isHidden = false
        } else if number > 350 {
           reset()
        }
    }
    
    
    // this button signify that the user just redeed their pizza, so we reset every thing to normal.
    @IBAction func redeemPressed(_ sender: UIButton) {
           
           reset()
        
           
       }
    
}

















  // ---------------- Extention ------------------- //

extension ViewController {
    
    
    func outletStyle() {
        progressBarOutlet.layer.cornerRadius = 20
        
        redeemButtonOutlet.layer.cornerRadius = 5
        
        // buybutton shadowStyles
        buyButtonOutlet.layer.cornerRadius = 9
        buyButtonOutlet.layer.shadowColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        buyButtonOutlet.layer.shadowOffset = CGSize(width: 0, height: 3)
        buyButtonOutlet.layer.shadowRadius  =  10.0
        buyButtonOutlet.layer.shadowOpacity = 1.0
        buyButtonOutlet.layer.masksToBounds = false
        
        
    }
    
    
    
    
    
}

