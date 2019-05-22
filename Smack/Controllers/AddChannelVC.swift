//
//  AddChannelVC.swift
//  Smack
//
//  Created by Brandon Criss on 5/9/19.
//  Copyright © 2019 Brandon Criss. All rights reserved.
//

import UIKit

class AddChannelVC: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var descriptionText: UITextField!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var mainView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    
    @IBAction func closeModalPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createChannelPressed(_ sender: Any) {
        guard let name = nameText.text , nameText.text != "" else { return }
        guard let description = descriptionText.text else { return }
        
        SocketService.instance.addChannel(name: name, description: description) { (success) in
            if success {
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    func setUpView() {
        nameText.attributedPlaceholder = NSAttributedString(string: "name", attributes: [NSAttributedString.Key.foregroundColor: SMACK_PURPLE_PLACEHOLDER_COLOR])
        descriptionText.attributedPlaceholder = NSAttributedString(string: "description", attributes: [NSAttributedString.Key.foregroundColor: SMACK_PURPLE_PLACEHOLDER_COLOR])
        nameText.delegate = self
        descriptionText.delegate = self
        
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.closeTap(_:)))
        let endEditingTouch = UITapGestureRecognizer(target: self, action: #selector(AddChannelVC.endEditingTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
        view.addGestureRecognizer(endEditingTouch)
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }
    
    @objc func endEditingTap(_ recognizer: UITapGestureRecognizer) {
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        self.view.endEditing(true)
        return true
    }
}
