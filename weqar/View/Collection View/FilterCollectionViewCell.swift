//
//  FilterCollectionViewCell.swift
//  weqar
//
//  Created by veena on 2/20/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class FilterCollectionViewCell: UICollectionViewCell {
    
    var filterLabel: UILabel = {
        var lab = UILabel()
        return lab
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        filterLabel.frame = CGRect(x:0, y: 10 , width: filterLabel.frame.size.width + 10 , height: 30)
        filterLabel.font = UIFont.boldSystemFont(ofSize: 12.0)
        filterLabel.backgroundColor = UIColor(rgb: 0x009a3d)
        filterLabel.textAlignment = .center
        filterLabel.sizeToFit()
        filterLabel.textColor = .white
        filterLabel.text = "chicken"
        contentView.addSubview(filterLabel)
        
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
