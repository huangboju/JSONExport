//
//	DataType.swift
//
//	Create by Ahmed Ali on 14/11/2014
//	Copyright (c) 2014 Mobile Developer. All rights reserved.
//

import Foundation

class DataType{

	var boolType = ""
	var characterType = ""
	var doubleType = ""
	var floatType = ""
	var intType = ""
	var longType = ""
	var stringType = ""


	/**
	 * Instantiate the instance using the passed dictionary values to set the properties values
	 */
    init(from dictionary: [String: Any]){
		boolType = dictionary["boolType"] as? String ?? ""
		characterType = dictionary["characterType"] as? String ?? ""
		doubleType = dictionary["doubleType"] as? String ?? ""
		floatType = dictionary["floatType"] as? String ?? ""
		intType = dictionary["intType"] as? String ?? ""
		longType = dictionary["longType"] as? String ?? ""
		stringType = dictionary["stringType"] as? String ?? ""
	}

	/**
	 * Returns all the available property values in the form of NSDictionary object where the key is the approperiate json key and the value is the value of the corresponding property
	 */
    func toDictionary() -> [String: String] {
        var dictionary: [String: String] = [:]
        
        dictionary["boolType"] = boolType
        dictionary["characterType"] = characterType
        dictionary["doubleType"] = doubleType
        dictionary["floatType"] = floatType
        dictionary["intType"] = intType
        dictionary["longType"] = longType
        dictionary["stringType"] = stringType

		return dictionary
	}

}
