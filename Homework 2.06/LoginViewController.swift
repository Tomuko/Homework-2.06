//
//  ViewController.swift
//  Homework 2.06
//
//  Created by Виктория Страдзина on 14.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet private var usernameTF: UITextField! 
    @IBOutlet private var passwordTF: UITextField!
    @IBOutlet var logInButton: UIButton!
    @IBOutlet var forgotUserNameButton: UIButton!
    @IBOutlet var forgotPasswordButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logInButton.layer.cornerRadius = 10
        
        usernameTF.autocorrectionType = .no
        usernameTF.spellCheckingType = .no
        passwordTF.isSecureTextEntry = true
        }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let welcomeVC = segue.destination as? WelcomeViewController {
            welcomeVC.username = usernameTF.text ?? ""
        }
    }
    
    @IBAction func unwindToLogin(_ unwindSegue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
    
    @IBAction func logInButtonTapped() {
        
    }
    
    
    }

