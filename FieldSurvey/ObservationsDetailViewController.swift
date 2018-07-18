//
//  ObservationsDetailViewController.swift
//  FieldSurvey
//
//  Created by Madison Williams on 7/15/18.
//  Copyright © 2018 Madison Williams. All rights reserved.
//

import UIKit

class ObservationsDetailViewController: UIViewController {

    var fieldObservationEvent: FieldObservation?

    var dateFormatter  = DateFormatter()
    
    @IBOutlet weak var classificationIconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var descriptionTextView: UITextView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        classificationIconImageView.image = fieldObservationEvent?.classification.image
        titleLabel.text = fieldObservationEvent?.title
        descriptionTextView.text = fieldObservationEvent?.description
        self.title = "Observation"
        if let date =  fieldObservationEvent?.date{
        dateLabel.text = dateFormatter.string(from: date)
        } else{
            dateLabel.text = ""
        }
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
