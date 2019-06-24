//
//  WeatherBreakdown.swift
//  SunCloud
//
//  Created by MacMini on 24/06/2019.
//  Copyright © 2019 com.blablabla. All rights reserved.
//

import Foundation


struct WeatherBreakdown: Decodable {
    
    let temperature: Double
    
    private enum CodingKeys: String, CodingKey {
        case temperature = "temp"
    }
    
}
