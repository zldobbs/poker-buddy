//
//  PBJsonParser.swift
//  poker-buddy
//
//  Created by Zachary Dobbs on 4/23/18.
//  Copyright © 2018 Zachary Dobbs. All rights reserved.
//

import Foundation

class PBJSONParser {
    
    class func parse(_ data: Data) -> [Option] {
        var oList = [Option]()

        // if statements in swift use , as and
        // get the json data
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            // get the root object of the json data
            let root = json as? [String: Any],
            // status should be set to ok
            let status = root["status"] as? String,
            status == "ok"
        {
            // get the observations array
            if let options = root["options"] as? [Any] {
                // iterate through the json array data
                for option in options {
                    // typecast the data as a dictionary of strings
                    if let option = option as? [String: String] {
                        // get all necessary values from each object
                        if let title = option["title"],
                            let description = option["desc"]
                        {
                            // try to create a struct from the parsed data
                            let new_option = Option(title: title, description: description)
                            // add the created struct to the array
                            oList.append(new_option)
                        }
                    }
                }
            }
        }
        // return the populated array of observations
        return oList
    }
    
}
