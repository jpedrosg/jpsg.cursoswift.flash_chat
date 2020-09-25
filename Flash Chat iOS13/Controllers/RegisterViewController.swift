//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import Firebase
import SCLAlertView
import NVActivityIndicatorView

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    @IBOutlet weak var activityIndicatorView: NVActivityIndicatorView!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        guard let email = emailTextfield.text, let password = passwordTextfield.text else { return }
        activityIndicatorView.startAnimating()
        Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
            self.activityIndicatorView.stopAnimating()
            if let e = error {
                SCLAlertView().showError("Error", subTitle: e.localizedDescription)
            } else {
                self.performSegue(withIdentifier: K.registerSegue, sender: self) 
            }
        }
    }
    
}
