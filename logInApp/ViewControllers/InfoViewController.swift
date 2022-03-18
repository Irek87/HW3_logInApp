//
//  InfoViewController.swift
//  logInApp
//
//  Created by Reek i on 17.03.2022.
//

import UIKit

class InfoViewController: UIViewController {

    // MARK: IB Outlets
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var jobLabel: UILabel!
    @IBOutlet var hobbyLabel: UILabel!
    
    // MARK: Public properties
    var user: User!
//    var name = ""
//    var surname = ""
//    var job = ""
//    var hobby = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Hello, my name is \(user.person.fullName)"
        jobLabel.text = "I work at \(user.person.job)"
        hobbyLabel.text = "My hobbies are \(user.person.hobby)"
    }

}
