//
//  UserDiscountCollectionViewCell.swift
//  weqar
//
//  Created by veena on 2/15/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class UserDiscountCollectionViewCell: UICollectionViewCell {
    
    var anotherColor = UIColor(red: 0.0/255.0, green: 154.0/255.0, blue: 61.0/255.0, alpha: 1.0)
    var basicColor = UIColor(red: 209.0/255.0, green: 209.0/255.0, blue: 209.0/255.0,alpha: 1.0)
    
    var cellView: UIView = {
        var view = UIView()
        return view
    }()
    var follow: UIButton = {
        var but = UIButton()
        return but
    }()
    var offer: UILabel = {
        var lab = UILabel()
        return lab
    }()
    var period: UILabel = {
        var lab = UILabel()
        return lab
    }()
    
    var banner: UIImageView = {
    var img = UIImageView()
    return img
    }()
    var card: UIImageView = {
        var img = UIImageView()
        return img
    }()
    var logo: UIImageView = {
        var img = UIImageView()
        return img
    }()
    var star: UIImageView = {
        var img = UIImageView()
        return img
    }()
    var locationIcon: UIImageView = {
        var img = UIImageView()
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        cellView.frame = CGRect(x: 0, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height)
        cellView.layer.cornerRadius = 10
        cellView.clipsToBounds = true
        contentView.addSubview(cellView)

        banner.frame = CGRect(x: 0, y: 0, width: cellView.frame.size.width, height: cellView.frame.size.height)
        banner.image = UIImage(named:"banner")
        banner.contentMode = .scaleToFill
        banner.clipsToBounds = true
        cellView.addSubview(banner)

        card.frame = CGRect(x: 0, y: 0, width: ((banner.frame.size.width) * 0.60), height: banner.frame.size.height)
        card.image = UIImage(named:"greycard")
        banner.addSubview(card)

        offer.frame = CGRect(x:10, y: ((6 * card.frame.size.height) / 10), width: ((card.frame.size.width) - 60), height: 20)
        offer.font = UIFont.boldSystemFont(ofSize: 16.0)
        offer.adjustsFontSizeToFitWidth = true
        offer.textAlignment = .left
        offer.textColor = .white
        offer.text = "75% Discount in KFC"
        card.addSubview(offer)

        period.frame = CGRect(x:10, y: (((6 * card.frame.size.height) / 10) + 20) , width: ((card.frame.size.width) - 50) , height: 15)
        period.font = UIFont.boldSystemFont(ofSize: 12.0)
        period.adjustsFontSizeToFitWidth = true
        period.textAlignment = .left
        period.textColor = .white
        period.text = "Period January 07 2018 Don't miss it!"
        card.addSubview(period)

        star.frame = CGRect(x: 10, y: (((6 * card.frame.size.height) / 10) + 35), width: 80, height: 15)
        star.image = UIImage(named:"star")
        card.addSubview(star)

        logo.frame = CGRect(x: 10, y: 10, width: ((self.frame.size.width) * 0.20), height: ((self.frame.size.width) * 0.20))
        logo.layer.cornerRadius = ((self.frame.size.width) * 0.10)
        logo.image = UIImage(named:"logo")
        logo.layer.borderWidth = 2
        logo.clipsToBounds = true
        logo.layer.borderColor = anotherColor.cgColor
        card.addSubview(logo)

        follow.frame = CGRect(x: banner.frame.width - 90, y: 15, width: 70, height: 20)
        follow.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        follow.backgroundColor = UIColor(rgb: 0x009a3d)
        follow.setTitle("Unfollow", for: .normal)
        follow.titleLabel?.textAlignment = .center
        follow.layer.cornerRadius = 5
        banner.addSubview(follow)


        locationIcon.frame = CGRect(x: ((banner.frame.size.width) - 30), y: ((banner.frame.size.height) - 24), width: 12, height: 17)
        locationIcon.image = UIImage(named:"location")
        banner.addSubview(locationIcon)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}

