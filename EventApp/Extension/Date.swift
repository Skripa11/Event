//
//  Date.swift
//  EventApp 1
//
//  Created by Vitya SKR on 07/12/2021.
//  Copyright © 2021 Vitya SKR. All rights reserved.
//

import UIKit

extension Date {
    func string() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYYMMddhhmmss"
        return formatter.string(from: self)
    }
}
