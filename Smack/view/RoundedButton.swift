//
//  RoundedButton.swift
//  Smack
//
//  Created by Kirolos on 12/24/18.
//  Copyright © 2018 Kirolos. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedButton: UIButton {
 
    @IBInspectable var cornerRadius : CGFloat = 3.0 {
        didSet {
            self.layer.cornerRadius = cornerRadius
        }
        
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
    }
    
    override func awakeFromNib() {
        self.setupView()
    }
    
    func setupView(){
        self.layer.cornerRadius = cornerRadius
    }
}
