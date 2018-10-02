//
//  ViewController.swift
//  LoginApp
//
//  Created by Steven Ramirez on 6/18/18.
//  Copyright © 2018 Steven Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var usernameTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    
    let correctUsername = "Steven Ramirez"
    let passwordUsername = "pass123"
    
    
    @IBAction func didTapLogin() {
        
        guard
            usernameTextField.text == correctUsername,
            passwordTextField.text == passwordUsername
            else { incorrectLogInAlert(); return }
        
        let deadline = DispatchTime.now() + .seconds(3)
        
        DispatchQueue.main.asyncAfter(deadline: deadline) {
            print("LOGIN")
            
            
            let user = User(name: "Steven Ramirez", age: 19, avatar: #imageLiteral(resourceName: "myImage"))
            
            self.performSegue(withIdentifier: "segue.Main.loginToMainApp", sender: user)
            
        }
        
    }
    
    
    func incorrectLogInAlert() {
        
        let message = "Incorrect username or password. Please try again."
        
        let alert = UIAlertController(title: "Login Failed", message: message, preferredStyle: .alert)
        
        let dismissAction = UIAlertAction(title: "Dismiss", style: .cancel)
        
        alert.addAction(dismissAction)
        
        present(alert, animated: true)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     
        super.prepare(for: segue, sender: sender)
    
        if let mainAppVC = segue.destination as? MainAppVC, let user = sender as? User {
            mainAppVC.user = user
            
        }
    


    }

}












