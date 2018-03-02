//
//  StringExtension.swift
//  SlideMenuControllerSwift
//
//  Created by Yuji Hato on 1/22/15.
//  Copyright (c) 2015 Yuji Hato. All rights reserved.
//

import Foundation

extension String {
    static func className(_ aClass: AnyClass) -> String {
        return NSStringFromClass(aClass).components(separatedBy: ".").last!
    }
    
    func substring(_ from: Int) -> String {
        return self.substring(from: self.characters.index(self.startIndex, offsetBy: from))
    }
    
    var length: Int {
        return self.characters.count
    }
    
    
   
        func isEmail() -> Bool {
            let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,4}"
            let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            let result = emailTest.evaluate(with: self)
            return result;
            
        }
        
        func isNumber() -> Bool {
            let numberRegEx = "[0-9]+";
            let numberTest = NSPredicate(format:"SELF MATCHES %@", numberRegEx)
            let result = numberTest.evaluate(with: self)
            return result;
        }
        
        func isValidName() -> Bool {
            let emailRegEx = "([a-zA-Z]{3,50}\\s?[a-zA-Z]{0,50})*"
            let emailTest = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
            let result = emailTest.evaluate(with: self)
            return result;
            
        }
        
        func isMobileNumber() -> Bool
        {
            let regexString1 = "^(\\+0|3|7|8|9)\\d{9}$";
            var regex:NSRegularExpression = try! NSRegularExpression(pattern: regexString1, options: NSRegularExpression.Options.caseInsensitive)
            regex = try! NSRegularExpression(pattern: regexString1, options: NSRegularExpression.Options.caseInsensitive)
            let matchingCount = regex.numberOfMatches(in: self, options: NSRegularExpression.MatchingOptions(), range: NSMakeRange(0, self.characters.count))
            return (matchingCount > 0);
        }
        
    
        //: ### Base64 encoding a string
        func encodeString() -> String? {
            
            let data = self.data(using: String.Encoding.utf8)
            let encodeString = String(data: data!, encoding: String.Encoding.utf8) as String!
            return encodeString
    }
    
}
