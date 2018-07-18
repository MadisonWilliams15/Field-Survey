//
//  FieldObservationTableViewCell.swift
//  FieldSurvey
//
//  Created by Madison Williams on 7/16/18.
//  Copyright © 2018 Madison Williams. All rights reserved.
//

import UIKit

class FieldObservationTableViewCell: UITableViewCell {

    @IBOutlet weak var classificationIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    

}
