//
//  FieldObservatiosJSONParser.swift
//  FieldSurvey
//
//  Created by Madison Williams on 7/15/18.
//  Copyright © 2018 Madison Williams. All rights reserved.
//

import Foundation

class FieldObservationJSONParser{
    
    static let dateFormatter = DateFormatter()
    class func parse(_ data : Data)->[FieldObservation]{
        var fieldObservations = [FieldObservation]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String : Any],
            let status = root["status"] as? String,
            status == "ok"{
            
            if let events = root["observations"] as? [Any]{
                for event in events{
                    if let event = event as? [String : String]{
                        if let classificationName = event["classification"],
                        let title = event["title"],
                        let description = event["description"],
                        let dateString = event["date"],
                        let date = dateFormatter.date(from : dateString){
                        
                            
                            if let fieldObservation = FieldObservation(classificationName : classificationName, title : title, description : description, date : date){
                                
                                fieldObservations.append(fieldObservation)
                            }
                            
                        }
                    }
                }
            }
        }
      return fieldObservations
    }
    
    
}
