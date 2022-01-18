//
//  DataEncoding.swift
//  EventApp 1
//
//  Created by Vitya SKR on 06/12/2021.
//  Copyright © 2021 Vitya SKR. All rights reserved.
//

import Foundation

extension Encodable {
    var dictionary: [String: Any]? {
        guard let data = try? JSONEncoder().encode(self) else { return nil }
        return (try? JSONSerialization.jsonObject(with: data, options: .allowFragments)).flatMap { $0 as? [String: Any] }
    }
}
