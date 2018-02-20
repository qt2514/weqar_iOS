//
//  ProfileViewController.swift
//  weqar
//
//  Created by veena on 2/19/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {
    
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    var basicScrollView = UIScrollView()
    var  professionalScrollView = UIScrollView()
    var  completedScrollView = UIScrollView()
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        var viewOne = UIView()
        viewOne.frame = CGRect(x: 0, y: 90 + (view.frame.size.width/6), width: (view.frame.size.width/4), height: 02)
        viewOne.backgroundColor = UIColor(rgb: 0x009a3d)
        view.addSubview(viewOne)
        
        var viewTwo = UIView()
        viewTwo.frame = CGRect(x: (view.frame.size.width/4), y: 90 + (view.frame.size.width/6), width: (view.frame.size.width/4), height: 02)
        viewTwo.backgroundColor = UIColor(rgb: 0xd1d1d1)
        view.addSubview(viewTwo)
        
        var viewThree = UIView()
        viewThree.frame = CGRect(x: (2*(view.frame.size.width/4)), y: 90 + (view.frame.size.width/6), width: (view.frame.size.width/4), height: 02)
        viewThree.backgroundColor = UIColor(rgb: 0xd1d1d1)
        view.addSubview(viewThree)
        
        var viewFour = UIView()
        viewFour.frame = CGRect(x: (3*(view.frame.size.width/4)), y:90 +  (view.frame.size.width/6), width: (view.frame.size.width/4), height: 02)
        viewFour.backgroundColor = UIColor(rgb: 0xd1d1d1)
        view.addSubview(viewFour)
        
        var imageOne = UIImageView()
        imageOne.frame = CGRect(x: (((1*(view.frame.size.width/4))-(view.frame.size.width/12))-20), y:90 +  (view.frame.size.width/12), width: (view.frame.size.width/6), height: (view.frame.size.width/6))
        imageOne.backgroundColor = UIColor(rgb: 0xd1d1d1)
        imageOne.image = UIImage(named:"basic2")
        imageOne.layer.cornerRadius = (view.frame.size.width/12)
        view.addSubview(imageOne)
        
        var imageTwo = UIImageView()
        imageTwo.frame = CGRect(x: ((2*(view.frame.size.width/4))-(view.frame.size.width/12)), y:90 +  (view.frame.size.width/12), width: (view.frame.size.width/6), height: (view.frame.size.width/6))
        imageTwo.backgroundColor = UIColor(rgb: 0xd1d1d1)
        imageTwo.image = UIImage(named:"professional1")
        imageTwo.layer.cornerRadius = (view.frame.size.width/12)
        view.addSubview(imageTwo)
        
        var imageThree = UIImageView()
        imageThree.frame = CGRect(x: (((3*(view.frame.size.width/4))-(view.frame.size.width/12))+20), y:90 +  (view.frame.size.width/12), width: (view.frame.size.width/6), height: (view.frame.size.width/6))
        imageThree.backgroundColor = UIColor(rgb: 0xd1d1d1)
        imageThree.image = UIImage(named:"completed1")
        imageThree.layer.cornerRadius = (view.frame.size.width/12)
        view.addSubview(imageThree)
        
        let basicScrollView = UIScrollView()
        basicScrollView.contentSize = CGSize(width: self.view.frame.width, height: 1000)
        basicScrollView.frame = CGRect(x: 0, y: 90 + (view.frame.size.width/3), width: self.view.frame.width, height: (self.view.frame.height - (90 + (view.frame.size.width/3))))
        basicScrollView.backgroundColor = UIColor(rgb: 0xd1d1d3)
        basicScrollView.isScrollEnabled = true
        self.view.addSubview(basicScrollView)
        
        let basicNext = UIButton()
        basicNext.frame = CGRect(x: (view.frame.size.width/2) - 75, y: 800, width: 150, height: 30)
        basicNext.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        basicNext.backgroundColor = UIColor(rgb: 0x009a3d)
        basicNext.addTarget(self, action: #selector(basicNextButton), for: UIControlEvents.touchUpInside)
        basicNext.setTitle("Save and Next", for: .normal)
        basicNext.titleLabel?.textAlignment = .center
        basicNext.layer.cornerRadius = 5
        basicScrollView.addSubview(basicNext)

    }
    @objc func basicNextButton(sender:UIButton!) {
        var viewOne = UIView()
        viewOne.frame = CGRect(x: 0, y: 90 + (view.frame.size.width/6), width: (view.frame.size.width/4), height: 02)
        viewOne.backgroundColor = UIColor(rgb: 0x009a3d)
        view.addSubview(viewOne)
        
        var viewTwo = UIView()
        viewTwo.frame = CGRect(x: (view.frame.size.width/4), y: 90 + (view.frame.size.width/6), width: (view.frame.size.width/4), height: 02)
        viewTwo.backgroundColor = UIColor(rgb: 0x009a3d)
        view.addSubview(viewTwo)
        
        var viewThree = UIView()
        viewThree.frame = CGRect(x: (2*(view.frame.size.width/4)), y: 90 + (view.frame.size.width/6), width: (view.frame.size.width/4), height: 02)
        viewThree.backgroundColor = UIColor(rgb: 0xd1d1d1)
        view.addSubview(viewThree)
        
        var viewFour = UIView()
        viewFour.frame = CGRect(x: (3*(view.frame.size.width/4)), y:90 +  (view.frame.size.width/6), width: (view.frame.size.width/4), height: 02)
        viewFour.backgroundColor = UIColor(rgb: 0xd1d1d1)
        view.addSubview(viewFour)
        
        var imageOne = UIImageView()
        imageOne.frame = CGRect(x: (((1*(view.frame.size.width/4))-(view.frame.size.width/12))-20), y:90 +  (view.frame.size.width/12), width: (view.frame.size.width/6), height: (view.frame.size.width/6))
        imageOne.backgroundColor = UIColor(rgb: 0xd1d1d1)
        imageOne.image = UIImage(named:"basic3")
        imageOne.layer.cornerRadius = (view.frame.size.width/12)
        view.addSubview(imageOne)
        
        var imageTwo = UIImageView()
        imageTwo.frame = CGRect(x: ((2*(view.frame.size.width/4))-(view.frame.size.width/12)), y:90 +  (view.frame.size.width/12), width: (view.frame.size.width/6), height: (view.frame.size.width/6))
        imageTwo.backgroundColor = UIColor(rgb: 0xd1d1d1)
        imageTwo.image = UIImage(named:"professional2")
        imageTwo.layer.cornerRadius = (view.frame.size.width/12)
        view.addSubview(imageTwo)
        
        var imageThree = UIImageView()
        imageThree.frame = CGRect(x: (((3*(view.frame.size.width/4))-(view.frame.size.width/12))+20), y:90 +  (view.frame.size.width/12), width: (view.frame.size.width/6), height: (view.frame.size.width/6))
        imageThree.backgroundColor = UIColor(rgb: 0xd1d1d1)
        imageThree.image = UIImage(named:"completed1")
        imageThree.layer.cornerRadius = (view.frame.size.width/12)
        view.addSubview(imageThree)
        
        let professionalScrollView = UIScrollView()
        professionalScrollView.contentSize = CGSize(width: self.view.frame.width, height: 1000)
        professionalScrollView.frame = CGRect(x: 0, y: 90 + (view.frame.size.width/3), width: self.view.frame.width, height: (self.view.frame.height - (90 + (view.frame.size.width/3))))
        professionalScrollView.backgroundColor = UIColor(rgb: 0xd1d1d2)
        professionalScrollView.isScrollEnabled = true
        self.view.addSubview(professionalScrollView)
        
        let professionalNext = UIButton()
        professionalNext.frame = CGRect(x: (view.frame.size.width/2) - 75, y: 800, width: 150, height: 30)
        professionalNext.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        professionalNext.backgroundColor = UIColor(rgb: 0x009a3d)
        professionalNext.addTarget(self, action: #selector(professionalNextButton), for: UIControlEvents.touchUpInside)
        professionalNext.setTitle("Save and Next", for: .normal)
        professionalNext.titleLabel?.textAlignment = .center
        professionalNext.layer.cornerRadius = 5
        professionalScrollView.addSubview(professionalNext)
  }
    @objc func professionalNextButton(sender:UIButton!) {
        var viewOne = UIView()
        viewOne.frame = CGRect(x: 0, y: 90 + (view.frame.size.width/6), width: (view.frame.size.width/4), height: 02)
        viewOne.backgroundColor = UIColor(rgb: 0x009a3d)
        view.addSubview(viewOne)
        
        var viewTwo = UIView()
        viewTwo.frame = CGRect(x: (view.frame.size.width/4), y: 90 + (view.frame.size.width/6), width: (view.frame.size.width/4), height: 02)
        viewTwo.backgroundColor = UIColor(rgb: 0x009a3d)
        view.addSubview(viewTwo)
        
        var viewThree = UIView()
        viewThree.frame = CGRect(x: (2*(view.frame.size.width/4)), y: 90 + (view.frame.size.width/6), width: (view.frame.size.width/4), height: 02)
        viewThree.backgroundColor = UIColor(rgb: 0x009a3d)
        view.addSubview(viewThree)
        
        var viewFour = UIView()
        viewFour.frame = CGRect(x: (3*(view.frame.size.width/4)), y:90 +  (view.frame.size.width/6), width: (view.frame.size.width/4), height: 02)
        viewFour.backgroundColor = UIColor(rgb: 0xd1d1d1)
        view.addSubview(viewFour)
        
        var imageOne = UIImageView()
        imageOne.frame = CGRect(x: (((1*(view.frame.size.width/4))-(view.frame.size.width/12))-20), y:90 +  (view.frame.size.width/12), width: (view.frame.size.width/6), height: (view.frame.size.width/6))
        imageOne.backgroundColor = UIColor(rgb: 0xd1d1d1)
        imageOne.image = UIImage(named:"basic3")
        imageOne.layer.cornerRadius = (view.frame.size.width/12)
        view.addSubview(imageOne)
        
        var imageTwo = UIImageView()
        imageTwo.frame = CGRect(x: ((2*(view.frame.size.width/4))-(view.frame.size.width/12)), y:90 +  (view.frame.size.width/12), width: (view.frame.size.width/6), height: (view.frame.size.width/6))
        imageTwo.backgroundColor = UIColor(rgb: 0xd1d1d1)
        imageTwo.image = UIImage(named:"professional3")
        imageTwo.layer.cornerRadius = (view.frame.size.width/12)
        view.addSubview(imageTwo)
        
        var imageThree = UIImageView()
        imageThree.frame = CGRect(x: (((3*(view.frame.size.width/4))-(view.frame.size.width/12))+20), y:90 +  (view.frame.size.width/12), width: (view.frame.size.width/6), height: (view.frame.size.width/6))
        imageThree.backgroundColor = UIColor(rgb: 0xd1d1d1)
        imageThree.image = UIImage(named:"completed2")
        imageThree.layer.cornerRadius = (view.frame.size.width/12)
        view.addSubview(imageThree)
        
        let completeScrollView = UIScrollView()
        completeScrollView.contentSize = CGSize(width: self.view.frame.width, height: 1000)
        completeScrollView.frame = CGRect(x: 0, y: 90 + (view.frame.size.width/3), width: self.view.frame.width, height: (self.view.frame.height - (90 + (view.frame.size.width/3))))
        completeScrollView.backgroundColor = UIColor(rgb: 0xe1e1e1)
        completeScrollView.isScrollEnabled = true
        self.view.addSubview(completeScrollView)
        
        let complete = UIButton()
        complete.frame = CGRect(x: (view.frame.size.width/2) - 75, y: 800, width: 150, height: 30)
        complete.titleLabel?.font = UIFont.boldSystemFont(ofSize: 12)
        complete.backgroundColor = UIColor(rgb: 0x009a3d)
        complete.addTarget(self, action: #selector(completeButton), for: UIControlEvents.touchUpInside)
        complete.setTitle("Complete", for: .normal)
        complete.titleLabel?.textAlignment = .center
        complete.layer.cornerRadius = 5
        completeScrollView.addSubview(complete)
    }
    @objc func completeButton(sender:UIButton!) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        self.present(vc, animated: false, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    

}
