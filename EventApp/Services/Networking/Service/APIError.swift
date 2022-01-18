//
//  APIError.swift
//  EventApp 1
//
//  Created by Vitya SKR on 02/12/2021.
//  Copyright © 2021 Vitya SKR. All rights reserved.
//

import Foundation

enum APIError: Error {
    case noData
    case requestFailed
    case jsonConversionFailure
    case invalidData
    case responseUnsuccessful
    case jsonParsingFailure
    
    var localizedDescription: String {
        switch self {
        case .noData: return "No data"
        case .requestFailed: return "Request Failed"
        case .invalidData: return "Invalid Data"
        case .responseUnsuccessful: return "Response Unsuccessful"
        case .jsonParsingFailure: return "JSON Parsing Failure"
        case .jsonConversionFailure: return "JSON Conversion Failure"
        }
    }
}
