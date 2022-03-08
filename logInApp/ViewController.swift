//
//  ViewController.swift
//  logInApp
//
//  Created by Reek i on 06.03.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        if let _ = touches.first {
            view .endEditing(true)
            super.touchesBegan(touches, with: event)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if userNameTextField.text == "Irek" && passwordTextField.text == "12345" {
            guard let welcomeUserVC = segue.destination as? WelcomeViewController else  { return }
            welcomeUserVC.welcomeUserName = userNameTextField.text
            
        } else {
            showAlert(title: "Алйо!", subtitle: "User name or password is wrong!")
        }
    }
    
    @IBAction func forgotUserNameButtonPressed() {
        showAlert(title: "Yo!", subtitle: "Your name is Irek")
    }
    
    @IBAction func forgotPasswordButtonPresseed() {
        showAlert(title: "Yo!", subtitle: "Password is 12345")
    }
    
    @IBAction func unwind(segue: UIStoryboardSegue) {
        userNameTextField.text = ""
        passwordTextField.text = ""
    }
    
    func showAlert(title: String, subtitle: String? = nil) {
        let alertController = UIAlertController(title: title,
                                                message: subtitle,
                                                preferredStyle: .alert)
        let done = UIAlertAction(title: "Понято", style: .default)
        alertController.addAction(done)

        present(alertController, animated: true)
    }
}

