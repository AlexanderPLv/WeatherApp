//
//  WeatherVC.swift
//  SunCloud
//
//  Created by MacMini on 21/06/2019.
//  Copyright © 2019 com.blablabla. All rights reserved.
//

import UIKit

class WeatherVC: UIViewController {
    
    @IBOutlet weak var cityLabel: UILabel!
    @IBOutlet weak var weatherImage: UIImageView!
    @IBOutlet weak var degreesLabel: UILabel!
    @IBOutlet weak var weatherDescriptionLabel: UILabel!
    
    var weatherReport: WeatherReport?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let weatherReport = weatherReport {
            
            cityLabel.text = weatherReport.list.first?.city
            degreesLabel.text = weatherReport.list.first?.degreesCelsius
            weatherDescriptionLabel.text = weatherReport.list.first?.description
            weatherImage.image = weatherReport.weatherImage
            
        }
        
    }
    

}
