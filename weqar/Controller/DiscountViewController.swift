//
//  DiscountViewController.swift
//  weqar
//
//  Created by veena on 2/15/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class DiscountViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UITextFieldDelegate{
    var anotherColor = UIColor(red: 0.0/255.0, green: 154.0/255.0, blue: 61.0/255.0, alpha: 1.0)
    var basicColor = UIColor(red: 209.0/255.0, green: 209.0/255.0, blue: 209.0/255.0,alpha: 1.0)
    
    @IBOutlet weak var searchRightConstraint: NSLayoutConstraint!
    @IBOutlet weak var searchLeftConstraint: NSLayoutConstraint!
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var searchTF: UITextField!
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
//        searchView.layer.borderColor = anotherColor as! CGColor
        searchLeftConstraint.constant = -35
        searchRightConstraint.constant = -35
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
        if(searchTF.resignFirstResponder()) {
//            searchView.layer.borderColor = UIColor(red: 209.0/255.0, green: 209.0/255.0, blue: 209.0/255.0,alpha: 1.0) as! CGColor
            searchLeftConstraint.constant = 8
            searchRightConstraint.constant = 8
        }
        return true
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "discountCell", for: indexPath as IndexPath) as! DiscountCollectionViewCell
        cell.layer.cornerRadius = 18
        cell.clipsToBounds = true
        return cell
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        searchTF.delegate = self
//        searchView.layer.borderColor = UIColor(hex: "009a3d") as! CGColor
        
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .vertical
        layout.itemSize = CGSize(width: view.frame.size.width, height:(view.frame.size.height / 4))
        layout.minimumLineSpacing = 10
        
        let myCollectionView:UICollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionView.frame = CGRect(x: 5, y: 90+50 , width: view.frame.size.width - 10, height: view.frame.size.height - 189)
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        myCollectionView.register(DiscountCollectionViewCell.self, forCellWithReuseIdentifier: "discountCell")
        myCollectionView.backgroundColor = .white
        myCollectionView.showsVerticalScrollIndicator = false
        myCollectionView.showsHorizontalScrollIndicator = false
        
        self.view.addSubview(myCollectionView)
        myCollectionView.translatesAutoresizingMaskIntoConstraints = false
        edgesForExtendedLayout = []

        
        let filterLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        filterLayout.scrollDirection = .horizontal
        filterLayout.itemSize = CGSize(width: 100, height: 30)
        filterLayout.minimumLineSpacing = 10
        
        let filterCollectionView:UICollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: filterLayout)
        filterCollectionView.frame = CGRect(x: 5, y: 90 , width: view.frame.size.width, height: 50)
        filterCollectionView.dataSource = self
        filterCollectionView.delegate = self
        filterCollectionView.register(DiscountCollectionViewCell.self, forCellWithReuseIdentifier: "filterCell")
        filterCollectionView.backgroundColor = .cyan
        filterCollectionView.showsVerticalScrollIndicator = false
        filterCollectionView.showsHorizontalScrollIndicator = false
        
        self.view.addSubview(myCollectionView)
        myCollectionView.translatesAutoresizingMaskIntoConstraints = false
        edgesForExtendedLayout = []
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
    
    
}

