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
        
        
        filterLabel.frame = CGRect(x:20, y: (((6 * self.frame.size.height) / 10) + 20) , width: ((self.frame.size.width) - 50) , height: 15)
        filterLabel.font = UIFont.boldSystemFont(ofSize: 12.0)
        filterLabel.adjustsFontSizeToFitWidth = true
        filterLabel.textAlignment = .center
        filterLabel.textColor = .white
        filterLabel.text = "Period January 07 2018 Don't miss it!"
        contentView.addSubview(filterLabel)
        
    
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
