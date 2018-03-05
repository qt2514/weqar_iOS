//
//  VendorDetailDiscountCollectionViewCell.swift
//  weqar
//
//  Created by veena on 3/5/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class VendorDetailDiscountCollectionViewCell: UICollectionViewCell {
    
    var anotherColor = UIColor(red: 0.0/255.0, green: 154.0/255.0, blue: 61.0/255.0, alpha: 1.0)
    var basicColor = UIColor(red: 209.0/255.0, green: 209.0/255.0, blue: 209.0/255.0,alpha: 1.0)
    
    var cellView: UIImageView = {
        var img = UIImageView()
        return img
    }()
    var banner: UIImageView = {
        var img = UIImageView()
        return img
    }()
    var profileImage: UIImageView = {
        var img = UIImageView()
        return img
    }()
    var offer: UILabel = {
        var lab = UILabel()
        return lab
    }()
    var period: UILabel = {
        var lab = UILabel()
        return lab
    }()
    var star: UIImageView = {
        var img = UIImageView()
        return img
    }()
    var contentLabel: UILabel = {
        var lab = UILabel()
        return lab
    }()
    var applyButton: UIButton = {
        var but = UIButton()
        return but
    }()
    var followButton: UIButton = {
        var but = UIButton()
        return but
    }()
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        cellView.frame = CGRect(x: 0, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height)
        cellView.layer.cornerRadius = 10
        cellView.backgroundColor = .white
        cellView.clipsToBounds = true
        contentView.addSubview(cellView)
        
        banner.frame = CGRect(x: 5, y: 5, width: cellView.frame.size.width - 10, height: (cellView.frame.size.height * 0.55))
        banner.image = UIImage(named:"background")
        banner.clipsToBounds = true
        cellView.addSubview(banner)
        
        profileImage.frame = CGRect(x: 10, y:(cellView.frame.size.height * 0.55) - ((cellView.frame.size.width/5) + 5), width: (contentView.frame.size.width/5), height: (contentView.frame.size.width/5))
        profileImage.layer.cornerRadius = (contentView.frame.size.width/10)
        profileImage.image = UIImage(named:"banner")
        profileImage.layer.borderColor = UIColor(rgb: 0x009a3d).cgColor
        profileImage.layer.borderWidth = 2
        profileImage.clipsToBounds = true
        cellView.addSubview(profileImage)
        
        offer.frame = CGRect(x:(cellView.frame.size.width/5) + 20, y: (cellView.frame.size.height * 0.55) - ((cellView.frame.size.width/5) + 10), width: (cellView.frame.size.width) - ((cellView.frame.size.width/5) + 30), height: 30)
        offer.font = UIFont.boldSystemFont(ofSize: 18.0)
        offer.textAlignment = .left
        offer.text = "75% Discount on KFC"
        offer.textColor = .white
        cellView.addSubview(offer)
        
        period.frame = CGRect(x:(cellView.frame.size.width/5) + 20, y: (cellView.frame.size.height * 0.55) - ((cellView.frame.size.width/5) + 10) + 23, width: (cellView.frame.size.width) - ((cellView.frame.size.width/5) + 30), height: 25)
        period.font = UIFont.boldSystemFont(ofSize: 16.0)
        period.adjustsFontSizeToFitWidth = true
        period.textAlignment = .left
        period.text = "Period April 07, 2017 Don't miss it!"
        period.textColor = .white
        cellView.addSubview(period)
        
        star.frame = CGRect(x: (cellView.frame.size.width/5) + 20, y: (cellView.frame.size.height * 0.55) - ((cellView.frame.size.width/5) + 10) + 47, width: 80, height: 15)
        star.image = UIImage(named:"star")
        cellView.addSubview(star)
        
        contentLabel.frame = CGRect(x:10, y: (cellView.frame.size.height * 0.55) + 10 , width: ((cellView.frame.size.width) - 20), height: cellView.frame.size.height - ((cellView.frame.size.height * 0.55) + 70))
        contentLabel.font = UIFont.systemFont(ofSize: 14)
        //        contentLabel.textContent.textAlignment = NSTextAlignment.Left
        contentLabel.numberOfLines = 20
        contentLabel.lineBreakMode = NSLineBreakMode.byWordWrapping
        contentLabel.text = "If this is your first Subscription Plan it will be considered the Main Subscription Plan (Parent Subscription Plan). All other Subscription Plans that you will create will be Upgrades or Downgrades of this Main Plan (Parent Subscription Plan). If this is your first Subscription Plan it will be considered the Main Subscription Plan (Parent Subscription Plan). All other Subscription Plans that you will create will be Upgrades or Downgrades of this Main Plan (Parent Subscription Plan)If this is your first Subscription Plan it will be considered the Main Subscription Plan (Parent Subscription Plan). All other Subscription Plans that you will create will be Upgrades or Downgrades of this Main Plan (Parent Subscription Plan). If this is your first Subscription Plan it will be considered the Main Subscription Plan (Parent Subscription Plan). All other Subscription Plans that you will create will be Upgrades or Downgrades of this Main Plan (Parent Subscription Plan)"
        cellView.addSubview(contentLabel)
        
        applyButton.frame = CGRect(x: (cellView.frame.size.width * 0.05) , y: cellView.frame.size.height - 50, width: (cellView.frame.size.width * 0.40), height: 40)
        applyButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        applyButton.setTitle("APPLY", for: .normal)
        applyButton.setTitleColor(.white, for: .normal)
        applyButton.titleLabel?.textAlignment = .center
        applyButton.layer.cornerRadius = 15
        applyButton.backgroundColor = UIColor(rgb: 0x009a3d)
        cellView.addSubview(applyButton)
        
        followButton.frame = CGRect(x: (cellView.frame.size.width * 0.55), y: cellView.frame.size.height - 50, width: (cellView.frame.size.width * 0.40), height: 40)
        followButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
        followButton.setTitle("FOLLOW", for: .normal)
        followButton.setTitleColor(.white, for: .normal)
        followButton.titleLabel?.textAlignment = .center
        followButton.layer.cornerRadius = 15
        followButton.backgroundColor = UIColor(rgb: 0xd1d1d1)
        cellView.addSubview(followButton)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

