//
//  RegisterViewController.swift
//  Daro's-Chat-App
//
//  Created by Dario Mintzer on 02/02/2022.
//

import UIKit
import Firebase
class RegisterViewController: UIViewController {
    

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var registerButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        registerButton.layer.cornerRadius = 10
    }
    

    @IBAction func registerPressed(_ sender: UIButton) {

        if let email = emailTextField.text, let password = passwordTextField.text{
            Auth.auth().createUser(withEmail: email, password: password) { authResult, error in
              // ...

                if let e = error {
                    print(e.localizedDescription)
                } else {//Navigate to the ChatViewController

                    self.performSegue(withIdentifier: K.registerSegue, sender: self)
                }
            }
        }

    }
}
