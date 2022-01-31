//
//  WeatherModel.swift
//  Clima
//
//  Created by Wilson Woodyard on 1/12/22.
//  Copyright © 2022 App Brewery. All rights reserved.
//

import Foundation

struct WeatherModel {
    let conditionId: Int
    let cityName: String
    let temperature: Double
    
    var temperatureString: String {
        String(format: "%.1f", temperature)
    }
    
    var conditionName: String {
        switch conditionId {
        case 200...299:
            return "cloud.bolt.rain"
        case 300...300:
            return "cloud.drizzle"
        case 500...599:
            return "cloud.heavyrain"
        case 600...699:
            return "cloud.snow"
        case 700...762:
            return "cloud.fog"
        case 771:
            return "wind"
        case 781:
            return "tornado"
        case 800:
            return "sun.max"
        case 801, 802:
            return "cloud.sun"
        case 803, 804:
            return "cloud"
        default:
            return "sun.haze"
        }
    }
    

}
