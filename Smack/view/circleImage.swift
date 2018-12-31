//
//  circleImage.swift
//  Smack
//
//  Created by Kirolos on 12/28/18.
//  Copyright © 2018 Kirolos. All rights reserved.
//

import UIKit

class circleImage: UIImageView {

   override func awakeFromNib() {
        setupView()
    }

    func setupView (){
        self.layer.cornerRadius = self.frame.width / 2
        self.clipsToBounds = true
    }
    
    override func prepareForInterfaceBuilder() {
        super.prepareForInterfaceBuilder()
        setupView()
    }
    
}
