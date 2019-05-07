//
//  Forecast.swift
//  Meteo
//
//  Created by Yasser Lachachi on 07/05/2019.
//  Copyright © 2019 Yasser Lachachi. All rights reserved.
//

import Foundation
import UIKit

public struct Forecast {
    let date: Date
    
    let temperature: Float
    let temperatureMin: Float
    let temperatureMax: Float
    let pressure: Float
    let humidity: Float
    
    let weather: [(title: String, description: String, icon: UIImage?)]
    
    let cloudsCoverage: Float
    
    let windSpeed: Float
    let windOrientation: Float
    
    internal init(api: APIMeteo) {
        date = api.date
        
        temperature = api.metrics.temperature
        temperatureMin = api.metrics.temperatureMin
        temperatureMax = api.metrics.temperatureMax
        pressure = api.metrics.pressure
        humidity = api.metrics.humidity
        
        weather = api.weather.map {
            let icon = UIImage(named: $0.icon, in: Bundle(for: MeteoClient.self), compatibleWith: nil)
            return (title: $0.title, description: $0.description, icon: icon)
        }
        
        cloudsCoverage = api.clouds.coverage / 100.0
        
        windSpeed = api.wind.speed
        windOrientation = api.wind.orientation
    }
    
    internal init(api: APIForecast.ForecastItem) {
        date = api.date
        
        temperature = api.metrics.temperature
        temperatureMin = api.metrics.temperatureMin
        temperatureMax = api.metrics.temperatureMax
        pressure = api.metrics.pressure
        humidity = api.metrics.humidity
        
        weather = api.weather.map {
            let icon = UIImage(named: $0.icon, in: Bundle(for: MeteoClient.self), compatibleWith: nil)
            return (title: $0.title, description: $0.description, icon: icon)
        }
        
        cloudsCoverage = api.clouds.coverage / 100.0
        
        windSpeed = api.wind.speed
        windOrientation = api.wind.orientation
    }
}
