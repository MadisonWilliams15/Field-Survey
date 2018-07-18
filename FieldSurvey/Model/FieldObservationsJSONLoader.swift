//
//  FieldObservationsJSONLoader.swift
//  FieldSurvey
//
//  Created by Madison Williams on 7/15/18.
//  Copyright © 2018 Madison Williams. All rights reserved.
//

import Foundation

class FieldObservationsJSONLoader{
    
    class func load(fileName : String) -> [FieldObservation]{
        var observations = [FieldObservation]()
        
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            observations = FieldObservationJSONParser.parse(data)
        }
        
        return observations
    }
}
