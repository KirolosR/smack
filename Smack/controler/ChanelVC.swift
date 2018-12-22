//
//  ChanelVC.swift
//  Smack
//
//  Created by Admin on 10/17/18.
//  Copyright © 2018 Admin. All rights reserved.
//

import UIKit

class ChanelVC: UIViewController {

    
    @IBAction func prepareforunwind(segue : UIStoryboardSegue){}
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60 
    }

  
    @IBAction func loginBtnPressed(_ sender: Any) {
        
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
    
    
}
