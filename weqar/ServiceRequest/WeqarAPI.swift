//
//  WeqarAPI.swift
//  weqar
//
//  Created by veena on 3/3/18.
//  Copyright © 2018 Quaticstech. All rights reserved.
//

import Foundation
import Alamofire

class WeqarAPI {

    let baseURL = "http://weqar.co/webapi/"
//    let imageBaseUrl = "http://twotr.com:5040/files"
//    //let baseURL = "http://twotr.com:4040/api/"
//    //let imageBaseUrl = "http://twotr.com:4040/files"
//    let aboutUrl = "https://www.twotr.com/about.html"
//    let termsUrl = "https://www.twotr.com/condition.html"
    
//MARK : Login  Api

func login(param :Dictionary<String , AnyObject> , completion : @escaping(_ success : Bool , _ jsonObject : AnyObject?) -> ())
{
    post(request: clientURLRequestPost(path: RequestType.Login.rawValue, params: param)) { (success, object) in
        DispatchQueue.main.async(execute: { () -> Void in
            if success {
                completion(true, object)
            }else{
                completion(false, object)
            }
        })
    }
}


//MARK : signUp  Api

func signup(param :Dictionary<String , AnyObject> , completion : @escaping(_ success : Bool , _ jsonObject : AnyObject?) -> ())
{
    post(request: clientURLRequestPost(path: RequestType.Signup.rawValue, params: param)) { (success, object) in
        DispatchQueue.main.async(execute: { () -> Void in
            if success {
                completion(true, object)
            }else{
                completion(false, object)
            }
        })
    }
}
    
    private func post(request: NSMutableURLRequest, completion: @escaping (_ success: Bool, _ object: AnyObject?) -> ()) {
        dataTask(request: request, method: "POST", completion: completion)
    }
    
    private func put(request: NSMutableURLRequest, completion: @escaping (_ success: Bool, _ object: AnyObject?) -> ()) {
        dataTask(request: request, method: "PUT", completion: completion)
    }
    
    private func get(request: NSMutableURLRequest, completion: @escaping (_ success: Bool, _ object: AnyObject?) -> ()) {
        dataTask(request: request, method: "GET", completion: completion)
    }
    
    private func dataTask(request: NSMutableURLRequest, method: String, completion: @escaping (_ success: Bool, _ object: AnyObject?) -> ()) {
        request.httpMethod = method
        
        let session = URLSession(configuration: URLSessionConfiguration.default)
        session.dataTask(with: request as URLRequest) { (data, response, error) -> Void in
            print(data ?? "")
            if let data = data {
                
                let json  = try? JSONSerialization.jsonObject(with: data, options: .allowFragments)
                
                
                print(json!)
                if let response = response as? HTTPURLResponse, 200...299 ~= response.statusCode {
                    
                    completion(true, json as AnyObject?)
                    
                } else {
                    
                    completion(false, json as AnyObject?)
                    
                }
            }
            }.resume()
    }
    
    func getUserType(completion : @escaping(_ success : Bool , _ jsonObject : AnyObject?) -> ())
    {
        get(request: clientURLRequestPost(path: RequestType.UserType.rawValue)) { (success, object) in
            DispatchQueue.main.async(execute: { () -> Void in
                if success {
                    completion(true, object)
                }else{
                    completion(false, object)
                }
            })
        }
        
        
    }

    private func clientURLRequestPost(path: String, params: Dictionary<String, AnyObject>? = nil) -> NSMutableURLRequest {
        
        
        let request = NSMutableURLRequest(url: NSURL(string: baseURL + path)! as URL)
        
        if params != nil {
            
            request.setValue("IOS", forHTTPHeaderField: "x-api-type")
              request.setValue("application/json", forHTTPHeaderField: "Content-Type")
            
            let jsonData = try? JSONSerialization.data(withJSONObject: params!)
            request.httpMethod = "POST"
            request.httpBody = jsonData
            print(request)
            
            return request
        }
        print(request)
        return request
        
    }
    
    
}
