//
//  WeatherList.swift
//  SunCloud
//
//  Created by MacMini on 24/06/2019.
//  Copyright © 2019 com.blablabla. All rights reserved.
//

import Foundation

struct WeatherList: Decodable {
    
    let city: String
    let breakdown: WeatherBreakdown
    let condition: [WeatherCondition]
    
    private enum CodingKeys: String, CodingKey {
        case city = "name"
        case breakdown = "main"
        case condition = "weather"
    }
}

extension WeatherList {
    
    var degreesCelsius: String {
    let wholeNumbers = Int(breakdown.temperature)
    let degreesCelsius = String("\(wholeNumbers)" + "˚")
        return degreesCelsius
    }
    
    var description: String {
        guard let description = condition.first?.description else { return "None"}
        return description
    }
    
}
