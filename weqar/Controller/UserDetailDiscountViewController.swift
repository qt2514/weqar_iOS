//
//  UserDetailDiscountViewController.swift
//  weqar
//
//  Created by veena on 2/27/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class UserDetailDiscountViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "detailDiscountCell", for: indexPath as IndexPath) as! UserDetailDiscountCollectionViewCell
        return cell
    }
    
    @IBOutlet weak var frontView: UIView!
    @IBAction func clickBack(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        let layout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        layout.scrollDirection = .horizontal
        layout.itemSize = CGSize(width: ((view.frame.size.width) * 0.92), height: view.frame.size.height - 200)
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10)
        layout.minimumLineSpacing = 10
        
        let myCollectionView:UICollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: layout)
        myCollectionView.frame = CGRect(x: 0, y: 100 , width: view.frame.size.width , height: view.frame.size.height - 200)
        myCollectionView.dataSource = self
        myCollectionView.delegate = self
        myCollectionView.register(UserDetailDiscountCollectionViewCell.self, forCellWithReuseIdentifier: "detailDiscountCell")
        myCollectionView.backgroundColor = UIColor.white.withAlphaComponent(0.0)
        myCollectionView.showsVerticalScrollIndicator = false
        myCollectionView.showsHorizontalScrollIndicator = false
        
        frontView.addSubview(myCollectionView)
        myCollectionView.translatesAutoresizingMaskIntoConstraints = false
        edgesForExtendedLayout = []
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        
    }

}
