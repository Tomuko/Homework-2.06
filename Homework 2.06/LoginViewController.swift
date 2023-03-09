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
    private let username = "1"
    private let password = "2"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logInButton.layer.cornerRadius = 10
        
        usernameTF.autocorrectionType = .no
        usernameTF.spellCheckingType = .no
        passwordTF.isSecureTextEntry = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let welcomeVC = segue.destination as? WelcomeViewController else { return }
        welcomeVC.username = user
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with: event)
        view.endEditing(true)
    }

    @IBAction func logInButtonTapped() {
        guard usernameTF.text == "1", passwordTF.text == "1" else {
            showAlert(
                title: "Invalid login or password",
                message: "Please, enter correct login and password☠️",
                textField: passwordTF
            )
            return
        }
    }
    
    @IBAction func forgotUserNameButtonTapped(_ sender: UIButton) {
        sender.tag == 0
        ? showAlert(title: "Ooops!", message: "Your name is \(username) 👾")
        : showAlert(title: "Ooops!", message: "Your password is \(password)🤖")
       
        
    }
    
    @IBAction func logOutButtonTapped(segue: UIStoryboardSegue) {
        usernameTF.text = ""
        passwordTF.text = ""
    }
}

private func showAlert(title: String, message: String, textField: UITextField? = nil) {
    let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
    let okAction = UIAlertAction(title: "Okay", message: .default) {_ in
    }
    alert.addAction(okAction)
    present(alert, animated: true)
}


