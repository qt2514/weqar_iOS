//
//  JobsCollectionViewCell.swift
//  weqar
//
//  Created by veena on 2/27/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class JobsCollectionViewCell: UICollectionViewCell {
    var anotherColor = UIColor(red: 0.0/255.0, green: 154.0/255.0, blue: 61.0/255.0, alpha: 1.0)
    var basicColor = UIColor(red: 209.0/255.0, green: 209.0/255.0, blue: 209.0/255.0,alpha: 1.0)

    var cellView: UIImageView = {
        var img = UIImageView()
        return img
    }()
    var job: UILabel = {
        var lab = UILabel()
        return lab
    }()
    var role: UILabel = {
        var lab = UILabel()
        return lab
    }()
    
    var logo: UIImageView = {
        var img = UIImageView()
        return img
    }()
    var contentLabel: UILabel = {
        var lab = UILabel()
        return lab
    }()
    var time: UIImageView = {
        var img = UIImageView()
        return img
    }()
    var deadlineLabel: UILabel = {
        var lab = UILabel()
        return lab
    }()
    var proceed: UIImageView = {
        var img = UIImageView()
        return img
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        
        cellView.frame = CGRect(x: 0, y: 0, width: contentView.frame.size.width, height: contentView.frame.size.height)
        cellView.layer.cornerRadius = 10
        cellView.backgroundColor = .white
        cellView.clipsToBounds = true
        contentView.addSubview(cellView)
        
        logo.frame = CGRect(x: 20, y:((cellView.frame.size.height/2) - ((self.frame.size.width) * 0.125)), width: ((self.frame.size.width) * 0.25), height: ((self.frame.size.width) * 0.25))
        logo.layer.cornerRadius = ((self.frame.size.width) * 0.125)
        logo.image = UIImage(named:"logo")
        logo.contentMode = .scaleToFill
        logo.clipsToBounds = true
        cellView.addSubview(logo)
        
        job.frame = CGRect(x:((self.frame.size.width) * 0.25) + 30, y:0, width: 150, height: 30)
        job.font = UIFont.boldSystemFont(ofSize: 18.0)
        job.textAlignment = .left
        job.text = "Film Maker"
        cellView.addSubview(job)
        
        role.frame = CGRect(x:((self.frame.size.width) * 0.25) + 30, y: 25 , width: 150 , height: 20)
        role.font = UIFont.boldSystemFont(ofSize: 14.0)
        role.textAlignment = .left
        role.text = "Producer"
        cellView.addSubview(role)
        
        contentLabel.frame = CGRect(x:((self.frame.size.width) * 0.25) + 30, y: 45 , width: ((self.frame.size.width) - (((self.frame.size.width) * 0.25) + 60)) , height: self.frame.size.height - 75)
        contentLabel.font = UIFont.systemFont(ofSize: 14)
        contentLabel.numberOfLines = 8
        contentLabel.text = "If this is your first Subscription Plan it will be considered the Main Subscription Plan (Parent Subscription Plan). All other Subscription Plans that you will create will be Upgrades or Downgrades of this Main Plan (Parent Subscription Plan). If this is your first Subscription Plan it will be considered the Main Subscription Plan (Parent Subscription Plan). All other Subscription Plans that you will create will be Upgrades or Downgrades of this Main Plan (Parent Subscription Plan)If this is your first Subscription Plan it will be considered the Main Subscription Plan (Parent Subscription Plan). All other Subscription Plans that you will create will be Upgrades or Downgrades of this Main Plan (Parent Subscription Plan). If this is your first Subscription Plan it will be considered the Main Subscription Plan (Parent Subscription Plan). All other Subscription Plans that you will create will be Upgrades or Downgrades of this Main Plan (Parent Subscription Plan)"
        cellView.addSubview(contentLabel)

        time.frame = CGRect(x:self.frame.size.width - 175, y: self.frame.size.height - 25 , width:20 , height: 20)
        time.image = UIImage(named:"time")
        cellView.addSubview(time)
        
        deadlineLabel.frame = CGRect(x:self.frame.size.width - 150, y: self.frame.size.height - 25 , width:150 , height: 20)
        deadlineLabel.font = UIFont.systemFont(ofSize: 14)
        deadlineLabel.numberOfLines = 8
        deadlineLabel.text = "Deadline 27-03-2017"
        cellView.addSubview(deadlineLabel)
        
        proceed.frame = CGRect(x:((self.frame.size.width) - 30), y:((cellView.frame.size.height/2) - 15), width: 20, height: 30)
        proceed.image = UIImage(named:"proceed")
        cellView.addSubview(proceed)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
