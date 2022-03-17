//
//  ViewController.swift
//  logInApp
//
//  Created by Reek i on 06.03.2022.
//

import UIKit

class LoginViewController: UIViewController {
    
    // MARK: IB Outlets
    @IBOutlet var userNameTextField: UITextField!
    @IBOutlet var passwordTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        passwordTextField.returnKeyType = .done
    }
    
    // MARK: Private properties
    
    private let person = Person()
    private let user = User(userName: "1", password: "1", person: Person())
//    private let user = "Irek"
//    private let password = "12345"
    
    // MARK Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tabBarController = segue.destination as! UITabBarController
//        let welcomeVC = segue.destination as! WelcomeViewController
//        welcomeVC.user = user
        guard let viewControllers = tabBarController.viewControllers else { return }
        
        for viewController in viewControllers {
            if let welcomeVC = viewController as? WelcomeViewController {
                welcomeVC.user = user.person.name
            }
            if let infoVC = viewController as? InfoViewController {
                infoVC.name = user.person.name
                infoVC.surname = user.person.surname
                infoVC.job = user.person.job
                infoVC.hobby = user.person.hobby
            }
        }
    }
    
    // MARK: IBActions
    @IBAction func logInPressed() {
        if userNameTextField.text != user.userName || passwordTextField.text != user.password {
            showAlert(title: "Invalid login or password",
                      message: "Please, enter correct login and password",
                      textField: passwordTextField
            )
            return
        }
        
        performSegue(withIdentifier: "showWelcomeVC", sender: nil)
    }
    
    @IBAction func forgotUserNamePressed() {
        showAlert(title: "Oops!",
                  message: "Your name is \(user.userName)")
    }
    
    @IBAction func forgotPasswordPressed() {
        showAlert(title: "Oops!",
                  message: "Your password is \(user.password)")
    }
    
    @IBAction func unwindSegue(segue: UIStoryboardSegue) {
        userNameTextField.text = nil
        passwordTextField.text = nil
    }
    
}

// MARK: Alert Controller
extension LoginViewController {
    private func showAlert(title: String, message: String, textField: UITextField? = nil) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default) { _ in
            textField?.text = nil
        }
        alert.addAction(okAction)
        present(alert, animated: true)
    }
}

// MARK: Work with keyboard
extension LoginViewController: UITextFieldDelegate {
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super .touchesBegan(touches, with: event)
        view.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == userNameTextField {
            passwordTextField.becomeFirstResponder()
        } else {
            logInPressed()
        }
        return true
    }
}


//import UIKit
//
//class ViewController: UIViewController, UITextFieldDelegate {
//
//    @IBOutlet var userNameTextField: UITextField!
//    @IBOutlet var passwordTextField: UITextField!
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//
//        userNameTextField.delegate = self
//        // userNameTextField.tag = 0
//        userNameTextField.returnKeyType = .next
//        passwordTextField.delegate = self
//        // passwordTextField.tag = 1
//        passwordTextField.returnKeyType = .done
//
//    }
//
//    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
//        if let _ = touches.first {
//            view .endEditing(true)
//            super.touchesBegan(touches, with: event)
//        }
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if userNameTextField.text == "Irek" && passwordTextField.text == "12345" {
//            guard let welcomeUserVC = segue.destination as? WelcomeViewController else  { return }
//            welcomeUserVC.welcomeUserName = userNameTextField.text
//
//        } else {
//            showAlert(title: "Алйо!", subtitle: "User name or password is wrong!")
//        }
//    }
//
//    @IBAction func forgotUserNameButtonPressed() {
//        showAlert(title: "Yo!", subtitle: "Your name is Irek")
//    }
//
//    @IBAction func forgotPasswordButtonPresseed() {
//        showAlert(title: "Yo!", subtitle: "Password is 12345")
//    }
//
//    @IBAction func unwind(segue: UIStoryboardSegue) {
//        userNameTextField.text = ""
//        passwordTextField.text = ""
//    }
//
//    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
//        if userNameTextField.isFirstResponder {
//            passwordTextField.becomeFirstResponder()
//        }
//        return true
//    }
//
//    func showAlert(title: String, subtitle: String? = nil) {
//        let alertController = UIAlertController(title: title,
//                                                message: subtitle,
//                                                preferredStyle: .alert)
//        let done = UIAlertAction(title: "Понято", style: .default)
//        alertController.addAction(done)
//
//        present(alertController, animated: true)
//    }
//}
//
