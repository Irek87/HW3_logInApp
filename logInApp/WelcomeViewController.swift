//
//  WelcomeViewController.swift
//  logInApp
//
//  Created by Reek i on 06.03.2022.
//

import UIKit

class WelcomeViewController: UIViewController {

    @IBOutlet var welcomeUserNameLabel: UILabel!
    
    var welcomeUserName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        welcomeUserNameLabel.text = "Welcome, \(welcomeUserName ?? "")!"
    }
    
    @IBAction func logOutButtonPressed() {
        dismiss(animated: true)
    }
    
}
