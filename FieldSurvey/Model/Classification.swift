//
//  Classification.swift
//  FieldSurvey
//
//  Created by Madison Williams on 7/15/18.
//  Copyright © 2018 Madison Williams. All rights reserved.
//

import Foundation
import UIKit

enum Classification : String{
    case bird
    case amphibian
    case reptile
    case insect
    case fish
    case plant
    case mammal
    
    var image : UIImage?{
        return UIImage(named: self.rawValue + "Icon")
    }
    
}
