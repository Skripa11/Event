//
//  KudaGoApi.swift
//  EventApp 1
//
//  Created by Vitya SKR on 05/12/2021.
//  Copyright © 2021 Vitya SKR. All rights reserved.
//

import Foundation

public enum KudaGoApi {
    case events(categories: Categories, page: Int)
    case search(text: String)
}

public enum Categories: String {
    case all = ""
    case concert = "concert"
    case festival = "festival"
    case theater = "theater"
    case standUp = "stand-up"
    
    var nameCategory: String {
        switch  self {
        case .all: return "Все мероприятия"
        case .concert: return "Концерты"
        case .festival: return "Фестивали"
        case .standUp: return "Stand Up"
        case .theater: return "Театры"
        }
    }
}
