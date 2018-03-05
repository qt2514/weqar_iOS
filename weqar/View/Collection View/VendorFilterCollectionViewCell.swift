//
//  VendorFilterCollectionViewCell.swift
//  weqar
//
//  Created by veena on 3/5/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class VendorFilterCollectionViewCell: UICollectionViewCell {
    
    var cellView: UIView = {
        var view = UIView()
        return view
    }()
    var filterButton: UIButton = {
        var but = UIButton()
        return but
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        cellView.frame = CGRect(x: 0, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height)
        cellView.layer.cornerRadius = 15
        cellView.clipsToBounds = true
        contentView.addSubview(cellView)
        
        
        filterButton.frame = CGRect(x:0, y: 0 , width: cellView.frame.size.width , height: cellView.frame.size.height )
        filterButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        //        filterButton.setTitle("FOLLOW", for: .normal)
        filterButton.setTitleColor(.white, for: .normal)
        filterButton.titleLabel?.textAlignment = .center
        filterButton.backgroundColor = UIColor(rgb: 0x009a3d)
        cellView.addSubview(filterButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

