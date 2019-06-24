//
//  WeatherReport.swift
//  SunCloud
//
//  Created by MacMini on 23/06/2019.
//  Copyright © 2019 com.blablabla. All rights reserved.
//

import Foundation

struct WeatherReport: Decodable {
    
    let city: String
    let breakdown: WeatherBreakdown
    let condition: [WeatherCondition]
    
    private enum CodingKeys: String, CodingKey {
        case city = "name"
        case breakdown = "main"
        case condition = "weather"
        }
}

struct WeatherBreakdown: Decodable {
    
    let temperature: Double
    
    private enum CodingKeys: String, CodingKey {
        case temperature = "temp"
    }
    
}

struct WeatherCondition: Decodable {
    let id: Int
    let description: String
}
