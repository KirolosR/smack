//
//  createAcountVC.swift
//  smack
//
//  Created by Kirolos on 12/17/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class createAcountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

       
    }

    @IBAction func closeBtnPresd(_ sender: Any) {
        
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    

}
