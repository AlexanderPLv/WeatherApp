//
//  WeatherReport.swift
//  SunCloud
//
//  Created by MacMini on 23/06/2019.
//  Copyright © 2019 com.blablabla. All rights reserved.
//

import UIKit

struct WeatherReport: Decodable {
    
    let list: [WeatherList]
    
    var weatherImage: UIImage {
        guard let conditionID = list.first?.condition.first?.id else { return UIImage() }
        
        switch conditionID {
        case 200...299: return #imageLiteral(resourceName: "thunder")
        case 300...399: return #imageLiteral(resourceName: "drizzle")
        case 500...599: return #imageLiteral(resourceName: "rain")
        case 600...699: return #imageLiteral(resourceName: "snow")
        case 700...799: return #imageLiteral(resourceName: "atmosphere")
        case 800      : return #imageLiteral(resourceName: "sunny")
        case 801...899: return #imageLiteral(resourceName: "cloudy")
        default: return UIImage()
            }
    }
    
}





