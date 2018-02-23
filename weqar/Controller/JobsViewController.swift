//
//  JobsViewController.swift
//  weqar
//
//  Created by veena on 2/20/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class JobsViewController: UIViewController,UITextFieldDelegate {
    
    @IBOutlet weak var searchRightConstraint: NSLayoutConstraint!
    @IBOutlet weak var searchLeftConstraint: NSLayoutConstraint!
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var searchTF: UITextField!
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        searchLeftConstraint.constant = -27
        searchRightConstraint.constant = -27
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if(searchTF.resignFirstResponder()) {
            searchLeftConstraint.constant = 8
            searchRightConstraint.constant = 8
        }
        return true
    }

    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTF.delegate = self
        searchView.layer.cornerRadius = 5
        // Do any additional setup after loading the view.
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
