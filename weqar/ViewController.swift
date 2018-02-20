//
//  ViewController.swift
//  weqar
//
//  Created by veena on 2/5/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit

    

class ViewController: UIViewController,UITextFieldDelegate {
    
    var navigation : UINavigationController!
    
    let myColor : UIColor = UIColor(rgb: 0xd1d1d1)
    let appColor : UIColor = UIColor(rgb: 0x009a3d)
    var gmailView = UIView()
    var passwordView = UIView()
    var gmailValue = UITextField()
    var passwordValue = UITextField()
    
    
   @objc func textFieldDidBeginEditing(_ textField: UITextField) {
        
        if (textField.tag == 1) {
            gmailView.layer.borderColor = appColor.cgColor
            passwordView.layer.borderColor = myColor.cgColor
            
        }else if (textField.tag == 2) {
            gmailView.layer.borderColor = myColor.cgColor
            passwordView.layer.borderColor = appColor.cgColor
            
        }else {
            gmailView.layer.borderColor = myColor.cgColor
            passwordView.layer.borderColor = myColor.cgColor
        
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        setupView()
        
        // Do any additional setup after loading th_rom a nib.
    }
    

    @objc func loginClicked(sender:UIButton!) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ProfileViewController") as! ProfileViewController
        self.present(vc, animated: false, completion: nil)
        
    }
    @objc func forgotButtonClicked(sender:UIButton!) {
        print("forgotButtonClicked")
        
    }
    
    @objc func guestButtonClicked(sender:UIButton!) {
        print("guestButtonClicked")
        
    }
    
    
    @objc func signUpButtonClicked(sender:UIButton!) {
        
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = kCATransitionPush
        transition.subtype = kCATransitionFromRight
        transition.timingFunction = CAMediaTimingFunction(name:kCAMediaTimingFunctionEaseInEaseOut)
        view.window!.layer.add(transition, forKey: kCATransition)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let signUpViewController = storyboard.instantiateViewController(withIdentifier: "signUpViewController") as! signUpViewController
        self.present(signUpViewController, animated: false, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

   
    
    func setupView() {
        
        let effectiveWidth = (self.view.frame.width)
        let effectiveHeight = (self.view.frame.height)
        
        var icon  = UIImageView()
        icon.frame = CGRect(x: ((2.65/8)*(effectiveWidth)), y: ((1/16)*(effectiveHeight)), width: ((2.7/8)*(effectiveWidth)), height: ((4/16)*(effectiveHeight)))
        icon.layer.cornerRadius = 50
        icon.image = UIImage(named: "icon")
        view.addSubview(icon)
        
        var gmailView = UIView()
        gmailView.frame = CGRect(x: ((2/20)*(effectiveWidth)), y: ((6/16)*(effectiveHeight)), width: ((16/20)*(effectiveWidth)), height: ((1.2/16)*(effectiveHeight)))
        gmailView.layer.cornerRadius = 10
        gmailView.layer.borderColor = myColor.cgColor
        gmailView.layer.borderWidth = 2
        view.addSubview(gmailView)
        
        var gmailValue = UITextField()
        gmailValue.frame = CGRect(x: ((2.4/20)*(effectiveWidth)), y: ((6.2/16)*(effectiveHeight)), width: ((15.2/20)*(effectiveWidth)), height: ((0.8/16)*(effectiveHeight)))
        gmailValue.placeholder = "username or email id"
        gmailValue.tag = 1
        view.addSubview(gmailValue)

        var passwordView = UIView()
        passwordView.frame = CGRect(x: ((2/20)*(effectiveWidth)), y: ((8/16)*(effectiveHeight)), width: ((16/20)*(effectiveWidth)), height: ((1.2/16)*(effectiveHeight)))
        passwordView.layer.cornerRadius = 10
        passwordView.layer.borderColor = myColor.cgColor
        passwordView.layer.borderWidth = 2
        view.addSubview(passwordView)
        
        var passwordValue = UITextField()
        passwordValue.frame = CGRect(x: ((2.6/20)*(effectiveWidth)), y: ((8.2/16)*(effectiveHeight)), width: ((14.8/20)*(effectiveWidth)), height: ((0.8/16)*(effectiveHeight)))
        passwordValue.placeholder = "Password"
        passwordValue.tag = 2
        view.addSubview(passwordValue)

        gmailValue.delegate = self
        passwordValue.delegate = self
        
        var loginButton = UIButton()
        loginButton.frame = CGRect(x: ((effectiveWidth/2)-((effectiveHeight)*(0.75/16))), y: ((10/16)*(effectiveHeight)), width: ((1.5/16)*(effectiveHeight)), height: ((1.5/16)*(effectiveHeight)))
        loginButton.setImage(UIImage(named: "arrow"), for: .normal)
        loginButton.addTarget(self, action: #selector(loginClicked), for: UIControlEvents.touchUpInside)
        loginButton.layer.cornerRadius = ((1/16)*(effectiveHeight))
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.titleLabel?.font = UIFont.systemFont(ofSize: 16)
        view.addSubview(loginButton)
        
        var forgotButton = UIButton()
        forgotButton.frame = CGRect(x: ((1/4)*(effectiveWidth)), y: ((11.7/16)*(effectiveHeight)), width: ((2/4)*(effectiveWidth)), height: ((0.8/16)*(effectiveHeight)))
        forgotButton.setTitle("Forgot Password?", for: .normal)
        forgotButton.addTarget(self, action: #selector(forgotButtonClicked), for: UIControlEvents.touchUpInside)
        forgotButton.setTitleColor(appColor, for: .normal)
        forgotButton.contentHorizontalAlignment = .center
        forgotButton.titleLabel?.font = UIFont.systemFont(ofSize: 14)
        forgotButton.titleLabel?.minimumScaleFactor = 0.2
        view.addSubview(forgotButton)
        
        var guestButton = UIButton()
        guestButton.frame = CGRect(x: 0, y: ((14/16)*(effectiveHeight)), width: ((1/2)*(effectiveWidth)), height: ((2/16)*(effectiveHeight)))
        guestButton.setTitle("GUEST", for: .normal)
        guestButton.addTarget(self, action: #selector(guestButtonClicked), for: UIControlEvents.touchUpInside)
        guestButton.setTitleColor(UIColor.black, for: .normal)
        guestButton.contentHorizontalAlignment = .center
        guestButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        guestButton.titleLabel?.minimumScaleFactor = 0.2
        view.addSubview(guestButton)
        
        
        var crossView = UIView()
        crossView.frame = CGRect(x: ((10/20)*(effectiveWidth)), y: ((14.25/16)*(effectiveHeight)), width: 1, height: ((1.5/16)*(effectiveHeight)))
        crossView.backgroundColor = UIColor(rgb: 0x009a3d)
        view.addSubview(crossView)

        var newAccountButton = UIButton()
        newAccountButton.frame = CGRect(x: (((1/2)*(effectiveWidth))+1), y: ((14/16)*(effectiveHeight)), width: ((1/2)*(effectiveWidth)), height: ((2/16)*(effectiveHeight)))
        newAccountButton.setTitle("NEW ACCOUNT", for: .normal)
        newAccountButton.addTarget(self, action: #selector(signUpButtonClicked), for: UIControlEvents.touchUpInside)
        newAccountButton.setTitleColor(UIColor.black, for: .normal)
        newAccountButton.contentHorizontalAlignment = .center
        newAccountButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        newAccountButton.titleLabel?.minimumScaleFactor = 0.2
        view.addSubview(newAccountButton)
        
       
    }
    
   
}

