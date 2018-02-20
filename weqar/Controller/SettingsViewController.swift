//
//  SettingsViewController.swift
//  weqar
//
//  Created by veena on 2/20/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController,UITextFieldDelegate {

    @IBOutlet weak var searchRightConstraint: NSLayoutConstraint!
    @IBOutlet weak var searchLeftConstraint: NSLayoutConstraint!
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var searchTF: UITextField!
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        searchLeftConstraint.constant = -35
        searchRightConstraint.constant = -35
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
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
