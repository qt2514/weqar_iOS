//
//  UserProfileSettingsViewController.swift
//  weqar
//
//  Created by veena on 3/5/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class UserProfileSettingsViewController: UIViewController {
    
    @IBOutlet weak var profilePic: UIImageView!
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    @IBAction func updateButton(_ sender: Any) {
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        profilePic.layer.cornerRadius = 60
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    

}
