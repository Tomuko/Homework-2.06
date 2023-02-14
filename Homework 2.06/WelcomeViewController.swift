//
//  WelcomeViewController.swift
//  Homework 2.06
//
//  Created by Виктория Страдзина on 14.02.2023.
//

import UIKit

final class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeLabel: UILabel!
    @IBOutlet var logOutButton: UIButton!
    
    var username = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        logOutButton.layer.cornerRadius = 10
        
        welcomeLabel.text = "Welcome, \(username)!"
    }
   
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
    
    
    @IBAction func logOutButtonTapped() {
        performSegue(withIdentifier: "unwindToLogin", sender: self)
        
    }
}
