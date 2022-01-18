//
//  EventsModel.swift
//  EventApp 1
//
//  Created by Vitya SKR on 26/11/2021.
//  Copyright © 2021 Vitya SKR. All rights reserved.
//

import Foundation

// MARK: - Welcome
struct ResultEventsModel: Codable {
    var count: Int?
    var next: String?
    var results: [EventModel]?
}

// MARK: - Result

struct EventModel: Codable {
    
    var id: Int?
    var title: String
    var date: Int?
    var bodyText, price: String
    var dates: [DateModel]
    var place: PlaceModel?
    var images: [ImageModel]
    var shortTitle: String
}






