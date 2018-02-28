//
//  ProfileSettingsViewController.swift
//  weqar
//
//  Created by veena on 2/27/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class ProfileSettingsViewController: UIViewController {
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var updateButton: UIButton!
    @IBAction func clickBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    profileImage.layer.cornerRadius = 60
    updateButton.layer.cornerRadius = 5
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
