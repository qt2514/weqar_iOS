//
//  JobsViewController.swift
//  weqar
//
//  Created by veena on 2/20/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class JobsViewController: UIViewController,UITextFieldDelegate,UICollectionViewDataSource,UICollectionViewDelegate {
    
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
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "jobCell", for: indexPath as IndexPath) as! JobsCollectionViewCell
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DetailJobsViewController") as! DetailJobsViewController
        self.present(vc, animated: false, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTF.delegate = self
        searchView.layer.cornerRadius = 5
       
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: view.frame.size.width - 20, height:(view.frame.size.height / 4))
        layout.sectionInset = UIEdgeInsets(top: 10, left:10, bottom: 00, right: 10)
        layout.minimumLineSpacing = 10
        
        let myCollectionView:UICollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionView.frame = CGRect(x: 0, y: 90 , width: view.frame.size.width, height: view.frame.size.height - 139)
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        myCollectionView.register(JobsCollectionViewCell.self, forCellWithReuseIdentifier: "jobCell")
        myCollectionView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        myCollectionView.showsVerticalScrollIndicator = false
        myCollectionView.showsHorizontalScrollIndicator = false
        
        self.view.addSubview(myCollectionView)
        myCollectionView.translatesAutoresizingMaskIntoConstraints = false
        edgesForExtendedLayout = []
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }

}
