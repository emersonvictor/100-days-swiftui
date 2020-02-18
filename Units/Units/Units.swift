//
//  Units.swift
//  Units
//
//  Created by Emerson Victor on 18/02/20.
//  Copyright © 2020 emer. All rights reserved.
//

import Foundation

protocol UnitsProtocol {
    var stringValue: String { get }
}

enum Units: Int, CaseIterable, UnitsProtocol {
    case temperature
    case lenght
    case time
    case volume
    
    var stringValue: String {
        switch self {
        case .temperature:
            return "Temperatura"
        case .lenght:
            return "Distância"
        case .time:
            return "Tempo"
        case .volume:
            return "Volume"
        }
    }
    
    var values: [UnitsProtocol] {
        switch self {
        case .temperature:
            return Temperature.allCases
        case .lenght:
            return Length.allCases
        case .time:
            return Time.allCases
        case .volume:
            return Volume.allCases
        }
    }
}

enum Temperature: Int, CaseIterable, UnitsProtocol {
    case celsius
    case fahrenheit
    case kelvin
    
    var stringValue: String {
        switch self {
        case .celsius:
            return "Celsius"
        case .fahrenheit:
            return "Fahrenheit"
        case .kelvin:
            return "Kelvin"
        }
    }
}

enum Length: CaseIterable, UnitsProtocol {
    case meters
    case kilometers
    case feet
    case yards
    case miles
    
    var stringValue: String {
        switch self {
        case .meters:
            return "Meters"
        case .kilometers:
            return "Kilometers"
        case .feet:
            return "Feet"
        case .yards:
            return "Yards"
        case .miles:
            return "Miles"
        }
    }
}

enum Time: CaseIterable, UnitsProtocol {
    case seconds
    case minutes
    case hours
    case days
    
    var stringValue: String {
        switch self {
        case .seconds:
            return "Seconds"
        case .minutes:
            return "Minutes"
        case .hours:
            return "Hours"
        case .days:
            return "Dias"
        }
    }
}

enum Volume: CaseIterable, UnitsProtocol {
    case milliliters
    case liters
    case cups
    case pints
    case gallons
    
    var stringValue: String {
        switch self {
        case .milliliters:
            return "Milliliters"
        case .liters:
            return "Liters"
        case .cups:
            return "Cups"
        case .pints:
            return "Pints"
        case .gallons:
            return "Gallons"
        }
    }
}
