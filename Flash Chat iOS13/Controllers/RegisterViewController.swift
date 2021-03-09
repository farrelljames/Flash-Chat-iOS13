//
//  RegisterViewController.swift
//  Flash Chat iOS13
//
//  Created by Angela Yu on 21/10/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit
import FirebaseAuth

extension UITextField {
    var isEmpty: Bool {
        return text?.trimmingCharacters(in: .whitespacesAndNewlines) == ""
    }
}

class RegisterViewController: UIViewController {

    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!
    
    @IBAction func registerPressed(_ sender: UIButton) {
        guard let email = emailTextfield.text,
            let password = passwordTextfield.text,
            !email.isEmpty, !password.isEmpty else {
                print("email or password empty")
                return
        }
            
        Auth.auth().createUser(withEmail: email, password: password) { (authResult, error) in
            if let e = error {
                print(e.localizedDescription)
            } else {
                self.performSegue(withIdentifier: K.registerSegue, sender: self)
            }
        }
    }
}

//extension RegisterViewController: FirebaseServiceDelegate {
//    func didCreateUser() {
//        <#code#>
//    }
//    
//    func didCreateDocument() {
//        <#code#>
//    }
//    
//    func didSignInUser() {
//        <#code#>
//    }
//    
//    func didRetrieveDocuments() {
//        <#code#>
//    }
//    
//    func signOutUser() {
//        <#code#>
//    }
//    
//    func didFailWithError(error: Error) {
//        <#code#>
//    }
//    
//    
//}

