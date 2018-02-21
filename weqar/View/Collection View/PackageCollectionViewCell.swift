//
//  PackageCollectionViewCell.swift
//  weqar
//
//  Created by veena on 2/21/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class PackageCollectionViewCell: UICollectionViewCell {

    var anotherColor = UIColor(red: 0.0/255.0, green: 154.0/255.0, blue: 61.0/255.0, alpha: 1.0)
    var basicColor = UIColor(red: 209.0/255.0, green: 209.0/255.0, blue: 209.0/255.0,alpha: 1.0)
    
    var durationLabel: UILabel = {
        var lab = UILabel()
        return lab
    }()
    var priceLabel: UILabel = {
        var lab = UILabel()
        return lab
    }()
    var contentLabel: UILabel = {
        var lab = UILabel()
        return lab
    }()
    var planButton: UIButton = {
        var but = UIButton()
        return but
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        durationLabel.frame = CGRect(x:(self.frame.size.width/2)-50, y: 10, width: 100, height: 30)
        durationLabel.font = UIFont.boldSystemFont(ofSize: 18.0)
        durationLabel.textAlignment = .center
        durationLabel.text = "MONTHLY"
        contentView.addSubview(durationLabel)
        
        priceLabel.frame = CGRect(x:(self.frame.size.width/2)-50, y: 40, width: 100, height: 40)
        priceLabel.font = UIFont.boldSystemFont(ofSize: 24.0)
        priceLabel.adjustsFontSizeToFitWidth = true
        priceLabel.textAlignment = .center
        priceLabel.textColor = UIColor(rgb: 0x009a3d)
        contentView.addSubview(priceLabel)
    
        contentLabel.frame = CGRect(x:10, y: 80 , width: ((self.frame.size.width) - 20) , height: self.frame.size.height - 140)
        contentLabel.font = UIFont.systemFont(ofSize: 14)
//        contentLabel.textContent.textAlignment = NSTextAlignment.Left
        contentLabel.numberOfLines = 20
        contentLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        contentLabel.text = "If this is your first Subscription Plan it will be considered the Main Subscription Plan (Parent Subscription Plan). All other Subscription Plans that you will create will be Upgrades or Downgrades of this Main Plan (Parent Subscription Plan). If this is your first Subscription Plan it will be considered the Main Subscription Plan (Parent Subscription Plan). All other Subscription Plans that you will create will be Upgrades or Downgrades of this Main Plan (Parent Subscription Plan)If this is your first Subscription Plan it will be considered the Main Subscription Plan (Parent Subscription Plan). All other Subscription Plans that you will create will be Upgrades or Downgrades of this Main Plan (Parent Subscription Plan). If this is your first Subscription Plan it will be considered the Main Subscription Plan (Parent Subscription Plan). All other Subscription Plans that you will create will be Upgrades or Downgrades of this Main Plan (Parent Subscription Plan)"
        contentView.addSubview(contentLabel)

        planButton.frame = CGRect(x: (self.frame.size.width/2)-60, y: self.frame.size.height - 50, width: 120, height: 40)
        planButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        planButton.setTitle("CHOOSE PLAN", for: .normal)
        planButton.setTitleColor(UIColor(rgb: 0x009a3d), for: .normal)
        planButton.titleLabel?.textAlignment = .center
        planButton.layer.cornerRadius = 15
        planButton.layer.borderColor = UIColor(rgb: 0x009a3d).cgColor
        planButton.layer.borderWidth = 1
        contentView.addSubview(planButton)


    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
    

