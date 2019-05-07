//
//  City.swift
//  Meteo
//
//  Created by Yasser Lachachi on 07/05/2019.
//  Copyright © 2019 Yasser Lachachi. All rights reserved.
//

import Foundation

public struct City: Codable {
    let identifier: Int64
    let name: String
    let country: String
    
    enum CodingKeys : String, CodingKey {
        case identifier = "id"
        case name
        case country
    }
}
