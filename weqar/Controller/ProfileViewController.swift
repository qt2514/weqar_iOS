//
//  ProfileViewController.swift
//  weqar
//
//  Created by veena on 2/19/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import UIKit


class ProfileViewController: UIViewController,UITextFieldDelegate,UICollectionViewDelegate,UICollectionViewDataSource {
    
    var anotherColor = UIColor(red: 0.0/255.0, green: 154.0/255.0, blue: 61.0/255.0, alpha: 1.0)
    var basicColor = UIColor(red: 209.0/255.0, green: 209.0/255.0, blue: 209.0/255.0,alpha: 1.0)

    var rates = ["₹ 100","₹ 200","₹ 300","₹ 400","₹ 500"]
    
    var firstNameView = UIView()
    var middleNameView = UIView()
    var lastNameView = UIView()
    var mobileNumberView = UIView()
    var addressView = UIView()
    var cityView = UIView()
    var zipCodeView = UIView()
    var CIDnoView = UIView()
    var memberNoTF = UIView()
    var validView = UIView()
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "packageCell", for: indexPath as IndexPath) as! PackageCollectionViewCell
        cell.priceLabel.text = rates[indexPath.row]
        cell.layer.cornerRadius = 15
        cell.backgroundColor = .white
        cell.clipsToBounds = true
        return cell
    }
    
        @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    
        func textFieldDidBeginEditing(_ textField: UITextField) {
            self.resetColor()
            if (textField.tag == 1) {
                print("ajksdgfkjhvf")
                firstNameView.backgroundColor = UIColor(rgb: 0x009a3d)
                firstNameView.layer.borderColor = anotherColor.cgColor
    
            }else if (textField.tag == 2) {
    
                middleNameView.backgroundColor = UIColor(rgb: 0x009a3d)
    
            }else if (textField.tag == 3) {
                lastNameView.backgroundColor = UIColor(rgb: 0x009a3d)
    
    
            }else if (textField.tag == 4) {
    
                mobileNumberView.backgroundColor = UIColor(rgb: 0x009a3d)
    
            }else if (textField.tag == 5) {
    
                addressView.backgroundColor = UIColor(rgb: 0x009a3d)
    
            }else if (textField.tag == 6) {
    
                cityView.backgroundColor = UIColor(rgb: 0x009a3d)
    
            }else if (textField.tag == 7) {
    
                zipCodeView.backgroundColor = UIColor(rgb: 0x009a3d)
    
    
            }else if (textField.tag == 8) {
    
                CIDnoView.backgroundColor = UIColor(rgb: 0x009a3d)
    
    
            }else if (textField.tag == 9) {
    
                memberNoTF.backgroundColor = UIColor(rgb: 0x009a3d)
    
    
            }else if (textField.tag == 10) {
    
                validView.backgroundColor = UIColor(rgb: 0x009a3d)
    
            }else {
                firstNameView.backgroundColor = UIColor(rgb: 0xd1d1d1)
                middleNameView.backgroundColor = UIColor(rgb: 0xd1d1d1)
                lastNameView.backgroundColor = UIColor(rgb: 0xd1d1d1)
                mobileNumberView.backgroundColor = UIColor(rgb: 0xd1d1d1)
                addressView.backgroundColor = UIColor(rgb: 0xd1d1d1)
                cityView.backgroundColor = UIColor(rgb: 0xd1d1d1)
                zipCodeView.backgroundColor = UIColor(rgb: 0xd1d1d1)
                CIDnoView.backgroundColor = UIColor(rgb: 0xd1d1d1)
                memberNoTF.backgroundColor = UIColor(rgb: 0xd1d1d1)
                validView.backgroundColor = UIColor(rgb: 0xd1d1d1)
            }
    
        }
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            self.resetColor()
            return true
        }
    
        func resetColor() {
            self.firstNameView.backgroundColor = UIColor(rgb: 0xd1d1d1)
            self.lastNameView.backgroundColor = UIColor(rgb: 0xd1d1d1)
            self.lastNameView.backgroundColor = UIColor(rgb: 0xd1d1d1)
            self.mobileNumberView.backgroundColor = UIColor(rgb: 0xd1d1d1)
            self.addressView.backgroundColor = UIColor(rgb: 0xd1d1d1)
            self.cityView.backgroundColor = UIColor(rgb: 0xd1d1d1)
            self.zipCodeView.backgroundColor = UIColor(rgb: 0xd1d1d1)
            self.CIDnoView.backgroundColor = UIColor(rgb: 0xd1d1d1)
            self.memberNoTF.backgroundColor = UIColor(rgb: 0xd1d1d1)
            self.validView.backgroundColor = UIColor(rgb: 0xd1d1d1)
    }
    
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
        basicScrollView.contentSize = CGSize(width: self.view.frame.width, height: (view.frame.size.width/3) + 665)
        basicScrollView.frame = CGRect(x: 0, y: 90 + (view.frame.size.width/3), width: self.view.frame.width, height: (self.view.frame.height - (90 + (view.frame.size.width/3))))
        basicScrollView.backgroundColor = .white
        basicScrollView.isScrollEnabled = true
        self.view.addSubview(basicScrollView)
        
        let profileImageEdit = UIButton()
        profileImageEdit.frame = CGRect(x: (2*(view.frame.size.width/3)) - (view.frame.size.width/18) , y:30, width: (view.frame.size.width/12), height: (view.frame.size.width/12))
        profileImageEdit.backgroundColor = UIColor(rgb: 0x009a3d)
        profileImageEdit.setImage(UIImage(named: "edit"), for: .normal)
        profileImageEdit.titleLabel?.textAlignment = .center
        profileImageEdit.layer.cornerRadius = (view.frame.size.width/24)
        basicScrollView.addSubview(profileImageEdit)
        
        var profileImage = UIImageView()
        profileImage.frame = CGRect(x: (view.frame.size.width/3), y:30, width: (view.frame.size.width/3), height: (view.frame.size.width/3))
        profileImage.backgroundColor = UIColor(rgb: 0xd1d1d1)
        profileImage.image = UIImage(named:"basic2")
        profileImage.layer.cornerRadius = (view.frame.size.width/6)
        basicScrollView.addSubview(profileImage)
        
        var firstNameTF = UITextField()
        firstNameTF.frame = CGRect(x: 25, y: (view.frame.size.width/3) + 40, width: (view.frame.size.width - 50), height: 30)
        firstNameTF.placeholder = "First Name"
        firstNameTF.font = UIFont.systemFont(ofSize: 16)
        firstNameTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        firstNameTF.delegate = self
        firstNameTF.tag = 1
        basicScrollView.addSubview(firstNameTF)
        
        var firstNameView = UIView()
        firstNameView.frame = CGRect(x: 20, y: (view.frame.size.width/3) + 80, width: (view.frame.size.width - 40), height: 01)
        firstNameView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        basicScrollView.addSubview(firstNameView)
        
        var middleNameTF = UITextField()
        middleNameTF.frame = CGRect(x: 25, y: (view.frame.size.width/3) + 110, width: (view.frame.size.width - 50), height: 30)
        middleNameTF.placeholder = "Middle Name"
        middleNameTF.font = UIFont.systemFont(ofSize: 16)
        middleNameTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        middleNameTF.tag = 2
        middleNameTF.delegate = self
        basicScrollView.addSubview(middleNameTF)
        
        var middleNameView = UIView()
        middleNameView.frame = CGRect(x: 20, y: (view.frame.size.width/3) + 150, width: (view.frame.size.width - 40), height: 01)
        middleNameView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        basicScrollView.addSubview(middleNameView)
        
        var lastNameTF = UITextField()
        lastNameTF.frame = CGRect(x: 25, y: (view.frame.size.width/3) + 180, width: (view.frame.size.width - 50), height: 30)
        lastNameTF.placeholder = "Last Name"
        lastNameTF.font = UIFont.systemFont(ofSize: 16)
        lastNameTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        lastNameTF.delegate = self
        lastNameTF.tag = 3
        basicScrollView.addSubview(lastNameTF)
        
        var lastNameView = UIView()
        lastNameView.frame = CGRect(x: 20, y: (view.frame.size.width/3) + 220, width: (view.frame.size.width - 40), height: 01)
        lastNameView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        basicScrollView.addSubview(lastNameView)
        
        var codeView = UIView()
        codeView.frame = CGRect(x: 20, y: (view.frame.size.width/3) + 290, width: 50, height: 01)
        codeView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        basicScrollView.addSubview(codeView)
        
        var mobileNumberTF = UITextField()
        mobileNumberTF.frame = CGRect(x: 85, y: (view.frame.size.width/3) + 250, width: (view.frame.size.width - 110), height: 30)
        mobileNumberTF.placeholder = "Mobile Number"
        mobileNumberTF.font = UIFont.systemFont(ofSize: 16)
        mobileNumberTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        mobileNumberTF.delegate = self
        mobileNumberTF.tag = 4
        basicScrollView.addSubview(mobileNumberTF)
        
        var mobileNumberView = UIView()
        mobileNumberView.frame = CGRect(x: 80, y: (view.frame.size.width/3) + 290, width: (view.frame.size.width - 100), height: 01)
        mobileNumberView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        basicScrollView.addSubview(mobileNumberView)
        
        var addressTF = UITextField()
        addressTF.frame = CGRect(x: 25, y: (view.frame.size.width/3) + 320, width: (view.frame.size.width - 50), height: 30)
        addressTF.placeholder = "Address"
        addressTF.font = UIFont.systemFont(ofSize: 16)
        addressTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        addressTF.delegate = self
        addressTF.tag = 5
        basicScrollView.addSubview(addressTF)
        
        var addressView = UIView()
        addressView.frame = CGRect(x: 20, y: (view.frame.size.width/3) + 360, width: (view.frame.size.width - 40), height: 01)
        addressView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        basicScrollView.addSubview(addressView)
        
        var cityTF = UITextField()
        cityTF.frame = CGRect(x: 25, y: (view.frame.size.width/3) + 390, width: (view.frame.size.width - 50), height: 30)
        cityTF.placeholder = "City"
        cityTF.font = UIFont.systemFont(ofSize: 16)
        cityTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        cityTF.delegate = self
        cityTF.tag = 6
        basicScrollView.addSubview(cityTF)
        
        var cityView = UIView()
        cityView.frame = CGRect(x: 20, y: (view.frame.size.width/3) + 430, width: (view.frame.size.width - 40), height: 01)
        cityView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        basicScrollView.addSubview(cityView)
        
        var zipCodeTF = UITextField()
        zipCodeTF.frame = CGRect(x: 25, y: (view.frame.size.width/3) + 460, width: (view.frame.size.width - 50), height: 30)
        zipCodeTF.placeholder = "Zip Code"
        zipCodeTF.font = UIFont.systemFont(ofSize: 16)
        zipCodeTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        zipCodeTF.delegate = self
        zipCodeTF.tag = 7
        basicScrollView.addSubview(zipCodeTF)
        
        var zipCodeView = UIView()
        zipCodeView.frame = CGRect(x: 20, y: (view.frame.size.width/3) + 500, width: (view.frame.size.width - 40), height: 01)
        zipCodeView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        basicScrollView.addSubview(zipCodeView)
        
        var countryView = UIView()
        countryView.frame = CGRect(x: 20, y: (view.frame.size.width/3) + 570, width: (view.frame.size.width - 40), height: 01)
        countryView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        basicScrollView.addSubview(countryView)
        
        let basicNext = UIButton()
        basicNext.frame = CGRect(x: (view.frame.size.width/2) - 75, y: (view.frame.size.width/3) + 600, width: 150, height: 40)
        basicNext.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
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
        professionalScrollView.contentSize = CGSize(width: self.view.frame.width, height: 500)
        professionalScrollView.frame = CGRect(x: 0, y: 90 + (view.frame.size.width/3), width: self.view.frame.width, height: (self.view.frame.height - (90 + (view.frame.size.width/3))))
        professionalScrollView.backgroundColor = .white
        professionalScrollView.isScrollEnabled = true
        self.view.addSubview(professionalScrollView)
        
        var CIDnoTF = UITextField()
        CIDnoTF.frame = CGRect(x: 25, y:  40, width: (view.frame.size.width - 50), height: 30)
        CIDnoTF.placeholder = "C.I.D Number"
        CIDnoTF.font = UIFont.systemFont(ofSize: 16)
        CIDnoTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        CIDnoTF.delegate = self
        CIDnoTF.tag = 8
        professionalScrollView.addSubview(CIDnoTF)
        
        var CIDnoView = UIView()
        CIDnoView.frame = CGRect(x: 20, y:  80, width: (view.frame.size.width - 40), height: 01)
        CIDnoView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        professionalScrollView.addSubview(CIDnoView)
        
        var memberNoTF = UITextField()
        memberNoTF.frame = CGRect(x: 25, y:  110, width: (view.frame.size.width - 50), height: 30)
        memberNoTF.placeholder = "Member Number"
        memberNoTF.font = UIFont.systemFont(ofSize: 16)
        memberNoTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        memberNoTF.delegate = self
        memberNoTF.tag = 9
        professionalScrollView.addSubview(memberNoTF)
        
        var memberNoView = UIView()
        memberNoView.frame = CGRect(x: 20, y:  150, width: (view.frame.size.width - 40), height: 01)
        memberNoView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        professionalScrollView.addSubview(memberNoView)
        
        var validTF = UITextField()
        validTF.frame = CGRect(x: 25, y:  180, width: (view.frame.size.width - 50), height: 30)
        validTF.placeholder = "Valid Till"
        validTF.font = UIFont.systemFont(ofSize: 16)
        validTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        validTF.delegate = self
        validTF.tag = 10
        professionalScrollView.addSubview(validTF)
        
        var validView = UIView()
        validView.frame = CGRect(x: 20, y:  220, width: (view.frame.size.width - 40), height: 01)
        validView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        professionalScrollView.addSubview(validView)
        
        var uploadImageLabel = UILabel()
        uploadImageLabel.frame = CGRect(x: 25, y:  240, width: (view.frame.size.width - 40), height: 30)
        uploadImageLabel.text = "Upload Image"
        uploadImageLabel.font = UIFont.boldSystemFont(ofSize: 16)
        professionalScrollView.addSubview(uploadImageLabel)
        
        let uploadImageButton = UIButton()
        uploadImageButton.frame = CGRect(x: 70, y: 285, width: 75, height: 100)
        uploadImageButton.setTitle("+", for: .normal)
        uploadImageButton.titleLabel?.textAlignment = .center
        uploadImageButton.setTitleColor(UIColor(rgb: 0xd1d1d1), for: UIControlState.normal)
//        uploadImageButton.layer.borderColor = UIColor(rgb: 0xd1d1d1) as! CGColor
//        uploadImageButton.addTarget(self, action: #selector(professionalNextButton), for: UIControlEvents.touchUpInside)
        uploadImageButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 30)
        uploadImageButton.layer.cornerRadius = 5
        uploadImageButton.layer.borderWidth = 1 
        professionalScrollView.addSubview(uploadImageButton)
        
        let professionalNext = UIButton()
        professionalNext.frame = CGRect(x: (view.frame.size.width/2) - 75, y: 435, width: 150, height: 40)
        professionalNext.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
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
        completeScrollView.contentSize = CGSize(width: self.view.frame.width, height: (self.view.frame.height - (90 + (view.frame.size.width/3))))
        completeScrollView.frame = CGRect(x: 0, y: 90 + (view.frame.size.width/3), width: self.view.frame.width, height: (self.view.frame.height - (90 + (view.frame.size.width/3))))
        completeScrollView.backgroundColor = .white
        completeScrollView.isScrollEnabled = true
        self.view.addSubview(completeScrollView)
        
        let packagelayout: UICollectionViewFlowLayout = UICollectionViewFlowLayout()
        packagelayout.scrollDirection = .horizontal
        packagelayout.itemSize = CGSize(width: view.frame.size.width - 100, height:view.frame.size.height - (160 + (view.frame.size.width/3)))
        packagelayout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10)
        packagelayout.minimumLineSpacing = 10
        
        let packageCollectionView:UICollectionView = UICollectionView(frame: self.view.frame, collectionViewLayout: packagelayout)
        packageCollectionView.frame = CGRect(x: 0, y: 0 , width: view.frame.size.width , height: view.frame.size.height - (150 + (view.frame.size.width/3)))
        packageCollectionView.dataSource = self
        packageCollectionView.delegate = self
        packageCollectionView.register(PackageCollectionViewCell.self, forCellWithReuseIdentifier: "packageCell")
        packageCollectionView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        packageCollectionView.showsVerticalScrollIndicator = false
        packageCollectionView.showsHorizontalScrollIndicator = false
        
        completeScrollView.addSubview(packageCollectionView)
        packageCollectionView.translatesAutoresizingMaskIntoConstraints = false
        edgesForExtendedLayout = []
        
        let complete = UIButton()
        complete.frame = CGRect(x: (view.frame.size.width/2) - 75, y: (completeScrollView.frame.height - 50), width: 150, height: 40)
        complete.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        complete.backgroundColor = UIColor(rgb: 0x009A3d)
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
