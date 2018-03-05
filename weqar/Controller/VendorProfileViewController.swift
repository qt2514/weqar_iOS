//
//  VendorProfileViewController.swift
//  weqar
//
//  Created by veena on 3/4/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//
import UIKit
import DropDown

class VendorProfileViewController: UIViewController,UITextFieldDelegate,UICollectionViewDelegate,UICollectionViewDataSource,UIImagePickerControllerDelegate,UINavigationControllerDelegate{
    
    @IBOutlet weak var headingLabel: UILabel!
    
    let dropDown = DropDown()
    var anotherColor = UIColor(red: 0.0/255.0, green: 154.0/255.0, blue: 61.0/255.0, alpha: 1.0)
    var basicColor = UIColor(red: 209.0/255.0, green: 209.0/255.0, blue: 209.0/255.0,alpha: 1.0)
    
    var imagePicker = UIImagePickerController()
    var uploadImageView = UIImageView()
    
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
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : AnyObject]) {
        if let pickedImage = info[UIImagePickerControllerOriginalImage] as? UIImage {
            uploadImageView.contentMode = .scaleAspectFit
            uploadImageView.image = UIImage(named:"pickedImage")
        }
        
        dismiss(animated:true, completion: nil)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "packageCell", for: indexPath as IndexPath) as! UserPackageCollectionViewCell
        cell.priceLabel.text = rates[indexPath.row]
        return cell
    }
    
    @IBAction func back(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    func textFieldDidBeginEditing(_ textField: UITextField) {
        self.resetColor()
        if (textField.tag == 1) {
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
        
        let codeButton = UIButton()
        codeButton.frame = CGRect(x: 25, y: (view.frame.size.width/3) + 250, width: 50, height: 30)
        codeButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        codeButton.setTitleColor(UIColor(rgb: 0xd1d1d1), for: .normal)
        codeButton.addTarget(self, action: #selector(codeButtonClicked), for: UIControlEvents.touchUpInside)
        codeButton.setTitle("Code", for: .normal)
        codeButton.contentHorizontalAlignment = .left
        basicScrollView.addSubview(codeButton)
        
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
        
        let countryButton = UIButton()
        countryButton.frame = CGRect(x: 25, y: (view.frame.size.width/3) + 530, width: (view.frame.size.width - 50), height: 30)
        countryButton.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        countryButton.setTitleColor(UIColor(rgb: 0xd1d1d1), for: .normal)
        countryButton.addTarget(self, action: #selector(countryButtonClicked), for: UIControlEvents.touchUpInside)
        countryButton.setTitle("Select Country", for: .normal)
        countryButton.contentHorizontalAlignment = .left
        basicScrollView.addSubview(countryButton)
        
        var countryView = UIView()
        countryView.frame = CGRect(x: 20, y: (view.frame.size.width/3) + 570, width: (view.frame.size.width - 40), height: 01)
        countryView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        basicScrollView.addSubview(countryView)
        
        let basicNext = UIButton()
        basicNext.frame = CGRect(x: (view.frame.size.width/2) - 75, y: (view.frame.size.width/3) + 600, width: 150, height: 40)
        basicNext.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        basicNext.backgroundColor = UIColor(rgb: 0x009a3d)
        basicNext.addTarget(self, action: #selector(basicNextButton), for: UIControlEvents.touchUpInside)
        basicNext.setTitle("Save and Next", for: .normal)
        basicNext.titleLabel?.textAlignment = .center
        basicNext.layer.cornerRadius = 5
        basicScrollView.addSubview(basicNext)
        
    }
    @objc func codeButtonClicked(sender:UIButton!) {
        dropDown.anchorView = sender
        dropDown.bottomOffset = CGPoint(x: 0, y: sender.bounds.height)
        dropDown.width = 200
        dropDown.backgroundColor = UIColor(rgb: 0xd1d1d1)
        dropDown.textColor = UIColor.black
        dropDown.dataSource = ["+91","+965","+1","+64"]
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            //            self.countryButton.titleLabel?.text = item
            //            self.genderStr = item as NSString
        }
        dropDown.show()
    }
    @objc func countryButtonClicked(sender:UIButton!) {
        dropDown.anchorView = sender
        dropDown.bottomOffset = CGPoint(x: 0, y: sender.bounds.height)
        dropDown.width = 200
        dropDown.backgroundColor = UIColor(rgb: 0xd1d1d1)
        dropDown.textColor = UIColor.black
        dropDown.dataSource = ["India","Kuwait","Canada","New Zealand"]
        dropDown.selectionAction = { [unowned self] (index: Int, item: String) in
            //            self.countryButton.titleLabel?.text = item
            //            self.genderStr = item as NSString
        }
        dropDown.show()
    }
    @objc func basicNextButton(sender:UIButton!) {
        headingLabel.text = "Professional"
        
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
        professionalScrollView.contentSize = CGSize(width: self.view.frame.width, height: 650)
        professionalScrollView.frame = CGRect(x: 0, y: 90 + (view.frame.size.width/3), width: self.view.frame.width, height: (self.view.frame.height - (90 + (view.frame.size.width/3))))
        professionalScrollView.backgroundColor = .white
        professionalScrollView.isScrollEnabled = true
        self.view.addSubview(professionalScrollView)
        
        var uploadImageLabel = UILabel()
        uploadImageLabel.frame = CGRect(x: (self.view.frame.width/2) - 65, y:  30, width: 130, height: 30)
        uploadImageLabel.text = "Company logo"
        uploadImageLabel.font = UIFont.boldSystemFont(ofSize: 16)
        uploadImageLabel.textAlignment = .center
        professionalScrollView.addSubview(uploadImageLabel)
        
        var uploadImageView = UIImageView()
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        uploadImageView.addGestureRecognizer(tapGestureRecognizer)
        uploadImageView.isUserInteractionEnabled = true
        uploadImageView.frame = CGRect(x: (self.view.frame.width/2) - 40, y: 70, width: 80, height: 100)
        uploadImageView.layer.borderColor = basicColor.cgColor
        uploadImageView.image = UIImage(named:"banner")
        uploadImageView.layer.cornerRadius = 5
        uploadImageView.layer.borderWidth = 2
        professionalScrollView.addSubview(uploadImageView)
        
        var categoryTF = UITextField()
        categoryTF.frame = CGRect(x: 25, y:  210, width: (view.frame.size.width - 50), height: 30)
        categoryTF.placeholder = "Category"
        categoryTF.font = UIFont.systemFont(ofSize: 16)
        categoryTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        categoryTF.delegate = self
        categoryTF.tag = 8
        professionalScrollView.addSubview(categoryTF)
        
        var categoryView = UIView()
        categoryView.frame = CGRect(x: 20, y:  250, width: (view.frame.size.width - 40), height: 01)
        categoryView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        professionalScrollView.addSubview(categoryView)
        
        var contactTF = UITextField()
        contactTF.frame = CGRect(x: 25, y: 280, width: (view.frame.size.width - 50), height: 30)
        contactTF.placeholder = "Business Contact"
        contactTF.font = UIFont.systemFont(ofSize: 16)
        contactTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        contactTF.delegate = self
        contactTF.tag = 9
        professionalScrollView.addSubview(contactTF)
        
        var contactView = UIView()
        contactView.frame = CGRect(x: 20, y:  320, width: (view.frame.size.width - 40), height: 01)
        contactView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        professionalScrollView.addSubview(contactView)
        
        var emailTF = UITextField()
        emailTF.frame = CGRect(x: 25, y:  350, width: (view.frame.size.width - 50), height: 30)
        emailTF.placeholder = "Business Email"
        emailTF.font = UIFont.systemFont(ofSize: 16)
        emailTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        emailTF.delegate = self
        emailTF.tag = 10
        professionalScrollView.addSubview(emailTF)
        
        var emailView = UIView()
        emailView.frame = CGRect(x: 20, y:  390, width: (view.frame.size.width - 40), height: 01)
        emailView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        professionalScrollView.addSubview(emailView)
        
        var websiteTF = UITextField()
        websiteTF.frame = CGRect(x: 25, y:  420, width: (view.frame.size.width - 50), height: 30)
        websiteTF.placeholder = "Website Link"
        websiteTF.font = UIFont.systemFont(ofSize: 16)
        websiteTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        websiteTF.delegate = self
        websiteTF.tag = 10
        professionalScrollView.addSubview(websiteTF)
        
        var websiteView = UIView()
        websiteView.frame = CGRect(x: 20, y:  460, width: (view.frame.size.width - 40), height: 01)
        websiteView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        professionalScrollView.addSubview(websiteView)
        
        var locationTF = UITextField()
        locationTF.frame = CGRect(x: 25, y:  490, width: (view.frame.size.width - 50), height: 30)
        locationTF.placeholder = "Location"
        locationTF.font = UIFont.systemFont(ofSize: 16)
        locationTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        locationTF.delegate = self
        locationTF.tag = 10
        professionalScrollView.addSubview(locationTF)
        
        var locationIV = UIImageView()
        locationIV.frame = CGRect(x: (view.frame.size.width - 60), y:  490, width: 30, height: 30)
        locationIV.backgroundColor = UIColor(rgb: 0xd1d1d1)
        locationIV.image = UIImage(named:"completed2")
        locationIV.layer.cornerRadius = (view.frame.size.width/12)
        professionalScrollView.addSubview(locationIV)
        
        var locationView = UIView()
        locationView.frame = CGRect(x: 20, y:  530, width: (view.frame.size.width - 40), height: 01)
        locationView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        professionalScrollView.addSubview(locationView)
        
        var professionalNext = UIButton()
        professionalNext.frame = CGRect(x: (view.frame.size.width/2) - 75, y: 575, width: 150, height: 40)
        professionalNext.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        professionalNext.backgroundColor = UIColor(rgb: 0x009a3d)
        professionalNext.addTarget(self, action: #selector(professionalNextButton), for: UIControlEvents.touchUpInside)
        professionalNext.setTitle("Save and Next", for: .normal)
        professionalNext.titleLabel?.textAlignment = .center
        professionalNext.layer.cornerRadius = 5
        professionalScrollView.addSubview(professionalNext)
    }
    
    @objc func imageTapped(tapGestureRecognizer: UITapGestureRecognizer)
    {
        let tappedImage = tapGestureRecognizer.view as! UIImageView
        
        if UIImagePickerController.isSourceTypeAvailable(.savedPhotosAlbum){
            imagePicker.delegate = self
            imagePicker.sourceType = .savedPhotosAlbum;
            imagePicker.allowsEditing = false
            self.present(imagePicker, animated: true, completion: nil)
        }
    }
    @objc func professionalNextButton(sender:UIButton!) {
        headingLabel.text = "Add Discount"
        
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
        completeScrollView.contentSize = CGSize(width: self.view.frame.width, height: 570)
        completeScrollView.frame = CGRect(x: 0, y: 90 + (view.frame.size.width/3), width: self.view.frame.width, height: (self.view.frame.height - (90 + (view.frame.size.width/3))))
        completeScrollView.backgroundColor = .white
        completeScrollView.isScrollEnabled = true
        self.view.addSubview(completeScrollView)
        
        var startDateTF = UITextField()
        startDateTF.frame = CGRect(x: 25, y:  40, width: (view.frame.size.width - 50), height: 30)
        startDateTF.placeholder = "Start Date"
        startDateTF.font = UIFont.systemFont(ofSize: 16)
        startDateTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        startDateTF.delegate = self
        startDateTF.tag = 8
        completeScrollView.addSubview(startDateTF)
        
        var startDateView = UIView()
        startDateView.frame = CGRect(x: 20, y:  80, width: (view.frame.size.width - 40), height: 01)
        startDateView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        completeScrollView.addSubview(startDateView)
        
        var endDateTF = UITextField()
        endDateTF.frame = CGRect(x: 25, y:  110, width: (view.frame.size.width - 50), height: 30)
        endDateTF.placeholder = "End Date"
        endDateTF.font = UIFont.systemFont(ofSize: 16)
        endDateTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        endDateTF.delegate = self
        endDateTF.tag = 9
        completeScrollView.addSubview(endDateTF)
        
        var endDateView = UIView()
        endDateView.frame = CGRect(x: 20, y:  150, width: (view.frame.size.width - 40), height: 01)
        endDateView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        completeScrollView.addSubview(endDateView)
        
        var discountTitleTF = UITextField()
        discountTitleTF.frame = CGRect(x: 25, y:  180, width: (view.frame.size.width - 50), height: 30)
        discountTitleTF.placeholder = "Discount Title"
        discountTitleTF.font = UIFont.systemFont(ofSize: 16)
        discountTitleTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        discountTitleTF.delegate = self
        discountTitleTF.tag = 10
        completeScrollView.addSubview(discountTitleTF)
        
        var discountTitleView = UIView()
        discountTitleView.frame = CGRect(x: 20, y:  220, width: (view.frame.size.width - 40), height: 01)
        discountTitleView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        completeScrollView.addSubview(discountTitleView)
        
        var descriptionTF = UITextField()
        descriptionTF.frame = CGRect(x: 25, y:  250, width: (view.frame.size.width - 50), height: 30)
        descriptionTF.placeholder = "Description"
        descriptionTF.font = UIFont.systemFont(ofSize: 16)
        descriptionTF.contentVerticalAlignment = UIControlContentVerticalAlignment.center
        descriptionTF.delegate = self
        descriptionTF.tag = 8
        completeScrollView.addSubview(descriptionTF)
        
        var descriptionView = UIView()
        descriptionView.frame = CGRect(x: 20, y:  290, width: (view.frame.size.width - 40), height: 01)
        descriptionView.backgroundColor = UIColor(rgb: 0xd1d1d1)
        completeScrollView.addSubview(descriptionView)
        
        var uploadImageLabel = UILabel()
        uploadImageLabel.frame = CGRect(x: (self.view.frame.width/2) - 65, y:  320, width: 130, height: 30)
        uploadImageLabel.text = "Upload Image"
        uploadImageLabel.font = UIFont.boldSystemFont(ofSize: 16)
        completeScrollView.addSubview(uploadImageLabel)
        
        var uploadImageView = UIImageView()
        let tapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(imageTapped(tapGestureRecognizer:)))
        uploadImageView.addGestureRecognizer(tapGestureRecognizer)
        uploadImageView.isUserInteractionEnabled = true
        uploadImageView.frame = CGRect(x: (self.view.frame.width/2) - 125, y: 360, width: 250, height: 130)
        uploadImageView.layer.borderColor = basicColor.cgColor
        uploadImageView.image = UIImage(named:"banner")
        uploadImageView.layer.cornerRadius = 5
        uploadImageView.layer.borderWidth = 2
        completeScrollView.addSubview(uploadImageView)
        
        let complete = UIButton()
        complete.frame = CGRect(x: (view.frame.size.width/2) - 75, y: 510, width: 150, height: 40)
        complete.titleLabel?.font = UIFont.boldSystemFont(ofSize: 16)
        complete.backgroundColor = UIColor(rgb: 0x009a3d)
        complete.addTarget(self, action: #selector(completeButton), for: UIControlEvents.touchUpInside)
        complete.setTitle("Complete", for: .normal)
        complete.titleLabel?.textAlignment = .center
        complete.layer.cornerRadius = 5
        completeScrollView.addSubview(complete)
    }
    @objc func completeButton(sender:UIButton!) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "VendorTabBarViewController") as! VendorTabBarViewController
        self.present(vc, animated: false, completion: nil)
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
}


