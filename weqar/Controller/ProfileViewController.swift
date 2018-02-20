//
//  ProfileViewController.swift
//  weqar
//
//  Created by veena on 2/19/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    @IBAction func complete(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        self.present(vc, animated: false, completion: nil)
    }
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    var personalScrollView = UIScrollView()
    var  educationalScrollView = UIScrollView()
    var  professionalScrollView = UIScrollView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
