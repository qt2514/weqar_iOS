//
//  DetailJobsViewController.swift
//  weqar
//
//  Created by veena on 2/27/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class DetailJobsViewController: UIViewController {
    @IBOutlet weak var updateButton: UIButton!
    @IBOutlet weak var profileImage: UIImageView!
    @IBAction func clickBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    updateButton.layer.cornerRadius = 5
    profileImage.layer.cornerRadius = 40
    profileImage.layer.borderWidth = 2
    profileImage.layer.borderColor = UIColor(rgb: 0x009a3d).cgColor
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
