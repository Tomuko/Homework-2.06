//
//  ViewController.swift
//  Homework 2.06
//
//  Created by Виктория Страдзина on 14.02.2023.
//

import UIKit

final class LoginViewController: UIViewController {

    @IBOutlet var usernameTF: UITextField!
    @IBOutlet var passwordTF: UITextField!
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
    
    @IBAction func logInButtonTapped() {
        let username = usernameTF.text ?? ""
        let password = passwordTF.text ?? ""
        
        if password != "Password" || username != "User" {
            let alertControllerForWrongLoginOrPassword = UIAlertController(title: "Invalid login or password", message: "Pleae, enter correct login and password☠️", preferredStyle: .alert)
           
            let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
            alertControllerForWrongLoginOrPassword.addAction(okAction)
            
            present(alertControllerForWrongLoginOrPassword, animated: true, completion: nil)
            
            passwordTF.text = ""
        }
        performSegue(withIdentifier: "ShowWelcomeScreen", sender: self)
    }
    
    @IBAction func forgotUserNameButtonTapped(_ sender: UIButton) {
        let alertControllerLogIn = UIAlertController(title: "Ooops!", message: "Your name is User👾", preferredStyle: .alert)
       
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertControllerLogIn.addAction(okAction)
        
        present(alertControllerLogIn, animated: true, completion: nil)
    }
    
    @IBAction func forgotPasswordButtonTapped() {
        let alertControllerLogIn = UIAlertController(title: "Ooops!", message: "Your password is Password🤖", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "Ok", style: .default, handler: nil)
        alertControllerLogIn.addAction(okAction)
        
        present(alertControllerLogIn, animated: true, completion: nil)
    }
    
    
    }

