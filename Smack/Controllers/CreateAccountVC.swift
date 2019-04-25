//
//  CreateAccountVC.swift
//  Smack
//
//  Created by Brandon Criss on 4/24/19.
//  Copyright © 2019 Brandon Criss. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var userImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func closePressed(_ sender: Any) {
            performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func createAccountPressed(_ sender: Any) {
        // comma is equal to where statement
        guard let email = emailText.text , emailText.text != "" else {
            return
        }
        guard let password = passwordText.text , passwordText.text != "" else {
            return
        }
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success {
                print("REGISTERED USER!")
            }
        }
    }
    
    @IBAction func pickAvatarPressed(_ sender: Any) {
        
    }
    
    @IBAction func pickBgColorPressed(_ sender: Any) {
        
    }
}
