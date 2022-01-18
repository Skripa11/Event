//
//  SearchModel.swift
//  EventApp 1
//
//  Created by Vitya SKR on 09/12/2021.
//  Copyright © 2021 Vitya SKR. All rights reserved.
//

import Foundation

struct SearchModel: Codable {
    let count: Int?
    let results: [SearchResultModel]
}

// MARK: - Result
struct SearchResultModel: Codable {
    let id: Int
    let title: String?
    let description: String?
    let address: String?
}
