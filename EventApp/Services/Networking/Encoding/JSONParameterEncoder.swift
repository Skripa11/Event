//
//  JSONParameterEncoder.swift
//  EventApp 1
//
//  Created by Vitya SKR on 02/12/2021.
//  Copyright © 2021 Vitya SKR. All rights reserved.
//

import Foundation

public struct JSONParameterEncoder: ParameterEncoder {
    
    public func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws {
        do {
            let jsonAsData = try JSONSerialization.data(withJSONObject: parameters, options: .prettyPrinted)
            urlRequest.httpBody = jsonAsData
        } catch {
            throw NetworkError.encodingFailed
        }
    }
}
