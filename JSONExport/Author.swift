//
//	Author.swift
//
//	Create by Ahmed Ali on 23/5/2016
//	Copyright © 2016. All rights reserved.
//	Model file Generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation


class Author : NSObject, NSCoding {
    
    var website = ""
    var email = ""
    var name = ""
    
    
    /**
     * Instantiate the instance using the passed dictionary values to set the properties values
     */
    init(from dictionary: [String: Any]) {
        website = dictionary["website"] as? String ?? ""
        email = dictionary["email"] as? String ?? ""
        name = dictionary["name"] as? String ?? ""
    }
    
    /**
     * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
     */
    func toDictionary() -> [String: String] {
        var resutl = [String: String]()
        resutl["website"] = website
        resutl["email"] = email
        resutl["name"] = name
        return resutl
    }
    
    /**
     * NSCoding required initializer.
     * Fills the data from the passed decoder
     */
    @objc required init(coder aDecoder: NSCoder)
    {
        website = aDecoder.decodeObject(forKey: "website") as? String ?? ""
        email = aDecoder.decodeObject(forKey: "email") as? String ?? ""
        name = aDecoder.decodeObject(forKey: "name") as? String ?? ""
        
    }
    
    /**
     * NSCoding required method.
     * Encodes mode properties into the decoder
     */
    @objc func encode(with aCoder: NSCoder) {
        aCoder.encode(website, forKey: "website")
        aCoder.encode(email, forKey: "email")
        aCoder.encode(name, forKey: "name")
    }
    
}
