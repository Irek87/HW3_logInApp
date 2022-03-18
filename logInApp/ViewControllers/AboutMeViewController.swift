//
//  AboutMeViewController.swift
//  logInApp
//
//  Created by Reek i on 18.03.2022.
//

import UIKit

class AboutMeViewController: UIViewController {
    
    var user: User!

    override func viewDidLoad() {
        super.viewDidLoad()
        title = user.person.fullName
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let infoVC = segue.destination as? InfoViewController else {return}
        infoVC.user = user
    }
    
    
}
