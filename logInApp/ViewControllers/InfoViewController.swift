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
    var name = ""
    var surname = ""
    var job = ""
    var hobby = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = "Hello, my name is \(surname) \(name)"
        jobLabel.text = "I work at \(job)"
        hobbyLabel.text = "My hobbies are \(hobby)"
    }

}
