//
//  PBJSONLoader.swift
//  poker-buddy
//
//  Created by Zachary Dobbs on 4/23/18.
//  Copyright © 2018 Zachary Dobbs. All rights reserved.
//

import Foundation

// JSON loader will call take a path and call the parser to create the array of structs
class PBJSONLoader {
    class func load(fileName: String) -> [Option] {
        var oList = [Option]()
        
        // convert the fileName to a path
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path))
        {
            // the JSONParser does not return optionals, so result will either be empty or populated, NOT nil
            oList = PBJSONParser.parse(data)
        }
        
        return oList
    }
}
