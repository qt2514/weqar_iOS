//
//  BaseViewController.swift
//  Vikatan
//
//  Created by BLT0005-IMAC on 08/02/17.
//  Copyright © 2017 Jegan Selvaraj. All rights reserved.
//

import Foundation
import UIKit
import FCAlertView
import ARSLineProgress
import PopupDialog


class BaseViewController  : UIViewController
{
    
    @IBOutlet weak var pView: UIView!
    
    @IBOutlet weak var popupLabel: UILabel!
    
    @IBOutlet weak var popupView: UIView!
    
    var weqarAPI = WeqarAPI()
    var topTitle : String = ""
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
    }
    
    let subject = cSubject.sharedInstance
    
    
    override func viewWillAppear(_ animated: Bool) {
    }
    
    func combineDateWithTime(date: Date, time: Date) -> Date? {
        let calendar = NSCalendar.current
        
        let dateComponents = calendar.dateComponents([.year, .month, .day], from: date)
        let timeComponents = calendar.dateComponents([.hour, .minute, .second], from: time)
        
        var mergedComponments = DateComponents()
        mergedComponments.year = dateComponents.year!
        mergedComponments.month = dateComponents.month!
        mergedComponments.day = dateComponents.day!
        mergedComponments.hour = timeComponents.hour!
        mergedComponments.minute = timeComponents.minute!
        mergedComponments.second = timeComponents.second!
        
        return calendar.date(from: mergedComponments)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func loadBack(_ button : UIButton)
    {
        self.navigationController?.popViewController(animated: true)
    }
    
    @IBAction func scheduleInfo(_ button : UIButton){
        
        print("scheduleInfo")
        self.showPopup(result: "Add your available schedule time. This will show to Users")
        
    }
    
    @IBAction func mapInfo(_ button : UIButton){
        
        print("mapInfo")
        self.showPopup(result: "To add locations of your class u going to add.")
        
    }
    
    
    
    func showPopup(animated: Bool = true , result  :String) {
        
        // Prepare the popup assets
        
        let title = ""
        let message = "\(result)"
        
        // Create the dialog
        let popup = PopupDialog(title: title, message: message) //(title: title, message: message, image: image, preferredWidth: 580)
        
        // Create second button
        let buttonThree = DefaultButton(title: "Ok") { [weak self] in
        }
        
        // Add buttons to dialog
        popup.addButtons([buttonThree])
        
        // Present dialog
        self.present(popup, animated: animated, completion: nil)
    }
    
    
    @IBAction func loadDismiss(_ button : UIButton)
    {
        self.dismiss(animated: true, completion: nil)
    }
    
    
    
    
    
    
    lazy var contentLoadingView: UIContentLoadingIndicatorView? = {
        
        let pageLoadingView = Bundle.main.loadNibNamed("ContentLoadingView", owner: self, options: nil)?[0] as? UIContentLoadingIndicatorView;
        // To resize
        pageLoadingView?.frame = self.view.frame
        if let loadingView = pageLoadingView {
            
            self.view.addSubview(loadingView);
            // To center the view to the parent view
            loadingView.center = CGPoint(x: self.view.frame.size.width / 2 , y: self.view.frame.size.height / 2);
            loadingView.layoutIfNeeded();
        }
        
        return pageLoadingView;
        
        
    }();
    
    var scheduleBool : Bool = false
    var mapBool : Bool = false
    open func didBeginLoadingContent() {
        if ARSLineProgress.shown { return }
        
        ARSLineProgress.showWithPresentCompetionBlock { () -> Void in
            print("Showed with completion block")
        }
        //
        //        OperationQueue.main.addOperation {
        //            self.contentLoadingView?.startAnimating();
        //        }
        
    }
    
    open func didEndLoadingContent() {
        
        ARSLineProgress.hideWithCompletionBlock({ () -> Void in
            print("Hidden with completion block")
        })
        
        //        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + Double(Int64(3 * Double(NSEC_PER_SEC))) / Double(NSEC_PER_SEC), execute: { () -> Void in
        //
        //        })
        //
        
        
        // ARSLineProgress.showSuccess()
        
        //        OperationQueue.main.addOperation {
        //            self.contentLoadingView?.stopAnimating();
        //        }
        
    }
    
    //twotrteam@gmail.com
    //kh43211234
    func defaultAlert(message : String = "" , title : String = "" , image : String = "error")
    {
        let fcalert = FCAlertView()
        fcalert.makeAlertTypeCaution()
        fcalert.showAlert(withTitle: title, withSubtitle: message, withCustomImage: UIImage(named: image), withDoneButtonTitle: "Okay", andButtons: nil)
    }
    
    
    
    func alertShowUserType(message : String = "" , title : String = "" , image : String = "error")
    {
        let fcalert = FCAlertView()
        fcalert.showAlert(withTitle: title, withSubtitle: message, withCustomImage: UIImage(named: image), withDoneButtonTitle: "Okay", andButtons: nil)
    }
    func successAlert(message : String = "" , title : String = "" , image : String = "error")
    {
        let fcalert = FCAlertView()
        fcalert.makeAlertTypeSuccess()
        fcalert.showAlert(withTitle: title, withSubtitle: message, withCustomImage: UIImage(named: image), withDoneButtonTitle: "Ok", andButtons: nil)
    }
    
    
    func dismissLoginVC(json : AnyObject)
    {
        UserDefaults.standard.set(json as! [String : AnyObject], forKey: "TwotrUserDetails")
        let verfication = json["verification"] as? [String : AnyObject]
        UserDefaults.standard.set(verfication!["isProfileCompleted"] as? Bool, forKey: "isProfileCompleted")
        UserDefaults.standard.set(verfication!["isProfessionalCompleted"] as? Bool, forKey: "isProfessionalCompleted")
        UserDefaults.standard.set(verfication!["isMobileVerified"] as? Bool, forKey: "isMobileVerified")
        UserDefaults.standard.set(verfication!["isEmailVerified"] as? Bool, forKey: "isEmailVerified")
        UserDefaults.standard.set(verfication!["isIdVerified"] as? Bool, forKey: "isIdVerified")
        UserDefaults.standard.set(verfication!["isEducationCompleted"] as? Bool, forKey: "isEducationCompleted")
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
       //siva// appDelegate.createLaunchMenu()
    }
    
    
    
}

final class cSubject{
    static let sharedInstance = cSubject()
    private init() {}
    
    var counts : Int = 0
    var profile : [String : AnyObject] = [String : AnyObject]()
    var searchArray : NSMutableArray = NSMutableArray()
    
    var selectedSubjectArray : NSMutableArray = NSMutableArray()
    var selectedGradeArray : NSMutableArray = NSMutableArray()
    var selectedSubjectString : String = String()
    var selectedGradeString : String = String()
    var selectedSubjectDict : NSMutableArray = NSMutableArray()
    
    var gradeValues : NSMutableArray = NSMutableArray()
    var paramSchedule : [[String : String]] = [[String : String]]()
    var locationArr : NSMutableArray = NSMutableArray()
    var temp : NSDictionary = NSDictionary()
    var values = ["Subject" : "" , "No":0,"Min":0,"Max":0,"Desc":""] as [String : Any]
}

extension UITextField{
    
    @IBInspectable var doneAccessory: Bool{
        get{
            return self.doneAccessory
        }
        set (hasDone) {
            if hasDone{
                addDoneButtonOnKeyboard()
            }
        }
    }
    
    func addDoneButtonOnKeyboard()
    {
        let doneToolbar: UIToolbar = UIToolbar(frame: CGRect.init(x: 0, y: 0, width: UIScreen.main.bounds.width, height: 50))
        doneToolbar.barStyle = .default
        
        let flexSpace = UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: nil, action: nil)
        let done: UIBarButtonItem = UIBarButtonItem(title: "Done", style: .done, target: self, action: #selector(self.doneButtonAction))
        
        let items = [flexSpace, done]
        doneToolbar.items = items
        doneToolbar.sizeToFit()
        
        self.inputAccessoryView = doneToolbar
    }
    
    @objc func doneButtonAction()
    {
        self.resignFirstResponder()
    }
}

extension Date {
    
    // Convert local time to UTC (or GMT)
    func toGlobalTime() -> Date {
        let timezone = TimeZone.current
        let seconds = -TimeInterval(timezone.secondsFromGMT(for: self))
        return Date(timeInterval: seconds, since: self)
    }
    
    // Convert UTC (or GMT) to local time
    func toLocalTime() -> Date {
        let timezone = TimeZone.current
        let seconds = TimeInterval(timezone.secondsFromGMT(for: self))
        return Date(timeInterval: seconds, since: self)
    }
    
}
