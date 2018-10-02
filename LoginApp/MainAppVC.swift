//
//  MainAppVC.swift
//  LoginApp
//
//  Created by Steven Ramirez on 6/18/18.
//  Copyright © 2018 Steven Ramirez. All rights reserved.
//

import UIKit

class MainAppVC: UIViewController {

    @IBOutlet weak var avatarView: UIImageView!
    
    @IBOutlet weak var greetingLabel: UILabel!
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        guard let unwrappedUser = self.user else { return }
        
        avatarView.image = unwrappedUser.avatar
        
        greetingLabel.text = "Hello \(unwrappedUser.name)!, You are \(unwrappedUser.age)"
    }

}
