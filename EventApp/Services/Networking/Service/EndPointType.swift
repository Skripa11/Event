//
//  EndPointType.swift
//  EventApp 1
//
//  Created by Vitya SKR on 02/12/2021.
//  Copyright © 2021 Vitya SKR. All rights reserved.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var headers: HTTPHeaders? { get }
}
