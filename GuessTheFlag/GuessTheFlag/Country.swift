//
//  Country.swift
//  GuessTheFlag
//
//  Created by Emerson Victor on 19/02/20.
//  Copyright © 2020 emer. All rights reserved.
//

import Foundation

enum Country: Int, CaseIterable {
    case estonia
    case france
    case germany
    case ireland
    case italy
    case nigeria
    case poland
    case russian
    case spain
    case uk
    case us
    
    var stringValue: String {
        switch self {
        case .estonia:
            return "Estonia"
        case .france:
            return "France"
        case .germany:
            return "Germany"
        case .ireland:
            return "Ireland"
        case .italy:
            return "Italy"
        case .nigeria:
            return "Nigeria"
        case .poland:
            return "Poland"
        case .russian:
            return "Russia"
        case .spain:
            return "Spain"
        case .uk:
            return "UK"
        case .us:
            return "US"
        }
    }
    
    static var count: Int {
        return Country.allCases.count
    }
}
