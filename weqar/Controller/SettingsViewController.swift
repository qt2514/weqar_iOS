//
//  SettingsViewController.swift
//  weqar
//
//  Created by veena on 2/20/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var scrollView: UIScrollView!
    
    @IBAction func profileButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ProfileSettingsViewController") as! ProfileSettingsViewController
        self.present(vc, animated: false, completion: nil)
    }
    
    @IBAction func accountButton(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "AccountSettingsViewController") as! AccountSettingsViewController
        self.present(vc, animated: false, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
       profileImage.layer.cornerRadius = 35
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
