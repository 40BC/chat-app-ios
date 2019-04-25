//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Brandon Criss on 4/24/19.
//  Copyright © 2019 Brandon Criss. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func closePressed(_ sender: Any) {
            performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
