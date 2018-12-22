//
//  GradientView.swift
//  Smack
//
//  Created by Admin on 10/18/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

@IBDesignable
class GradientView: UIView {

    @IBInspectable var topColor :  UIColor  = #colorLiteral(red: 0.3435429889, green: 0.327815335, blue: 1, alpha: 1) {
        didSet{
           self.setNeedsLayout()
        }
        
    }
    
    @IBInspectable var bottonColor :  UIColor  = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet{
            self.setNeedsLayout()
        }
        
    }
    
    override func layoutSubviews() {
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor , bottonColor.cgColor]
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds
        self.layer.insertSublayer(gradientLayer, at: 0)
        
    }
    

}
