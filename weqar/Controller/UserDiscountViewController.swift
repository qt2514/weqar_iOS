//
//  UserDiscountViewController.swift
//  weqar
//
//  Created by veena on 2/15/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class UserDiscountViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UITextFieldDelegate {
    
    var filterItems = ["chicken", "vegetarian", "mutton", "sea food"]
    var anotherColor = UIColor(red: 0.0/255.0, green: 154.0/255.0, blue: 61.0/255.0, alpha: 1.0)
    var basicColor = UIColor(red: 209.0/255.0, green: 209.0/255.0, blue: 209.0/255.0,alpha: 1.0)

    @IBOutlet weak var searchRightConstraint: NSLayoutConstraint!
    @IBOutlet weak var searchLeftConstraint: NSLayoutConstraint!
    @IBOutlet weak var searchView: UIView!
    @IBOutlet weak var searchTF: UITextField!

    
    var refreshControl: UIRefreshControl!
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
//        searchView.layer.borderColor = anotherColor as! CGColor
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
            return filterItems.count
    }

    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {

//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "filterCell", for: indexPath as IndexPath) as! UserFilterCollectionViewCell
//            cell.filterButton.setTitle(filterItems[indexPath.row], for: .normal)
//            return cell

            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "discountCell", for: indexPath as IndexPath) as! UserDiscountCollectionViewCell
            cell.layer.cornerRadius = 18
            cell.clipsToBounds = true
            return cell

        
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "UserDetailDiscountViewController") as! UserDetailDiscountViewController
        self.present(vc, animated: false, completion: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        searchTF.delegate = self
        searchView.layer.cornerRadius = 5
//        searchView.layer.borderColor = UIColor(hex: "009a3d") as! CGColor

        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let filterFrame = CGRect(x: 0, y: 90, width: self.view.frame.width, height: 50)
        layout.scrollDirection = .horizontal
        layout.itemSize = UICollectionViewFlowLayoutAutomaticSize
        layout.estimatedItemSize = CGSize(width: 100, height: 30)
        layout.sectionInset = UIEdgeInsets(top: 0, left:10, bottom: 0, right: 10)
        layout.minimumLineSpacing = 10

        let myCollectionView:UICollectionView = UICollectionView(frame: filterFrame, collectionViewLayout: layout)
//        myCollectionView.frame = CGRect(x: 0, y: 90 , width: view.frame.size.width, height: 50)
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        myCollectionView.register(UserFilterCollectionViewCell.self, forCellWithReuseIdentifier: "filterCell")
        myCollectionView.backgroundColor = .white
        myCollectionView.showsVerticalScrollIndicator = false
        myCollectionView.showsHorizontalScrollIndicator = false

//        self.view.addSubview(myCollectionView)
        myCollectionView.translatesAutoresizingMaskIntoConstraints = false
        edgesForExtendedLayout = []

        let discountLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        let discountFrame = CGRect(x: 0, y: 90 + 50, width: self.view.frame.width, height: view.frame.size.height - 189)
        discountLayout.scrollDirection = .vertical
        discountLayout.itemSize = CGSize(width: view.frame.size.width - 20 , height:(view.frame.size.height / 4))
        discountLayout.sectionInset = UIEdgeInsets(top: 0, left:10, bottom: 0, right: 10)
        discountLayout.minimumLineSpacing = 10
        
        let discountCollectionView:UICollectionView = UICollectionView(frame: discountFrame, collectionViewLayout: discountLayout)
//        discountCollectionView.frame = CGRect(x: 0, y: 90 + 50 , width: view.frame.size.width, height: view.frame.size.height - 189)
        discountCollectionView.dataSource = self
        discountCollectionView.delegate = self
        discountCollectionView.register(UserDiscountCollectionViewCell.self, forCellWithReuseIdentifier: "discountCell")
        discountCollectionView.backgroundColor = .white
        discountCollectionView.showsVerticalScrollIndicator = false
        discountCollectionView.showsHorizontalScrollIndicator = false
    
        self.view.addSubview(discountCollectionView)
        discountCollectionView.translatesAutoresizingMaskIntoConstraints = false
        
        refreshControl = UIRefreshControl()
        refreshControl.attributedTitle = NSAttributedString(string: "Pull to refresh")
        refreshControl.addTarget(self, action: #selector(refresh), for: .valueChanged)
        discountCollectionView.addSubview(refreshControl)
    }
    
    @objc func refresh(sender:AnyObject) {
        refreshControl.endRefreshing()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

/////////////

//class UserDiscountViewController: UIViewController,UICollectionViewDataSource,UICollectionViewDelegate,UITextFieldDelegate{
//    var anotherColor = UIColor(red: 0.0/255.0, green: 154.0/255.0, blue: 61.0/255.0, alpha: 1.0)
//    var basicColor = UIColor(red: 209.0/255.0, green: 209.0/255.0, blue: 209.0/255.0,alpha: 1.0)
//
//    let myCollectionView = UICollectionView()
//    @IBOutlet weak var searchRightConstraint: NSLayoutConstraint!
//    @IBOutlet weak var searchLeftConstraint: NSLayoutConstraint!
//    @IBOutlet weak var searchView: UIView!
//    @IBOutlet weak var searchTF: UITextField!
//
//    func textFieldDidBeginEditing(_ textField: UITextField) {
//        //        searchView.layer.borderColor = anotherColor as! CGColor
//        searchLeftConstraint.constant = -35
//        searchRightConstraint.constant = -35
//    }
//
//    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool {
//        if(searchTF.resignFirstResponder()) {
//            //            searchView.layer.borderColor = UIColor(red: 209.0/255.0, green: 209.0/255.0, blue: 209.0/255.0,alpha: 1.0) as! CGColor
//            searchLeftConstraint.constant = 8
//            searchRightConstraint.constant = 8
//        }
//        return true
//    }
//    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
////        if collectionView == myCollectionView {
//            return 5
////        }else {
////            return 8
////        }
//
//    }
//
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
////        if collectionView == myCollectionView {
//            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "discountCell", for: indexPath as IndexPath) as! UserDiscountCollectionViewCell
//            cell.layer.cornerRadius = 18
//            cell.clipsToBounds = true
//            return cell
//        }
////
////        else {
////            let FilterCell = collectionView.dequeueReusableCell(withReuseIdentifier: "filterCell", for: indexPath as IndexPath) as! UserFilterCollectionViewCell
////            FilterCell.layer.cornerRadius = 15
////            FilterCell.clipsToBounds = true
////            return FilterCell
////        }
////
////    }
//
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        searchTF.delegate = self
//        
//        //        searchView.layer.borderColor = UIColor(hex: "009a3d") as! CGColor
//
//        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
//        layout.scrollDirection = .vertical
//        layout.itemSize = CGSize(width: view.frame.size.width, height:(view.frame.size.height / 4))
//        layout.minimumLineSpacing = 10
//
//        let myCollectionView:UICollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
//        myCollectionView.frame = CGRect(x: 0, y: 90+50 , width: view.frame.size.width, height: view.frame.size.height - 189)
//        myCollectionView.dataSource = self
//        myCollectionView.delegate = self
//        myCollectionView.register(UserDiscountCollectionViewCell.self, forCellWithReuseIdentifier: "discountCell")
//        myCollectionView.backgroundColor = .white
//        myCollectionView.showsVerticalScrollIndicator = false
//        myCollectionView.showsHorizontalScrollIndicator = false
//
//        self.view.addSubview(myCollectionView)
////        myCollectionView.translatesAutoresizingMaskIntoConstraints = false
//        
//
////
////        let filterLayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
////        filterLayout.scrollDirection = .horizontal
////        filterLayout.itemSize = CGSize(width: 100, height: 50)
////        filterLayout.sectionInset = UIEdgeInsets(top: 10, left:0, bottom: 10, right: 0)
////        filterLayout.minimumLineSpacing = 10
////
////        let filterCollectionView:UICollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: filterLayout)
////        filterCollectionView.frame = CGRect(x: 0, y: 90 , width: 1000, height: 50)
////        filterCollectionView.dataSource = self
////        filterCollectionView.delegate = self
////        filterCollectionView.register(UserFilterCollectionViewCell.self, forCellWithReuseIdentifier: "filterCell")
////        filterCollectionView.backgroundColor = .cyan
////        filterCollectionView.showsVerticalScrollIndicator = false
////        filterCollectionView.showsHorizontalScrollIndicator = false
////
////        self.view.addSubview(filterCollectionView)
////        filterCollectionView.translatesAutoresizingMaskIntoConstraints = false
////
//
//    }
//
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//    }
//
//
//
//
//}







