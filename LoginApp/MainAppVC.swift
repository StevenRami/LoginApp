//
//  MainAppVC.swift
//  LoginApp
//
//  Created by Steven Ramirez on 6/18/18.
//  Copyright © 2018 Steven Ramirez. All rights reserved.
//

import UIKit

class MainAppVC: UIViewController {

    
    @IBOutlet weak var greetingLabel: UILabel!
    
    var username: String?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let username = username else { return }
        
        greetingLabel.text = "Hello \(username)"
    }

}
