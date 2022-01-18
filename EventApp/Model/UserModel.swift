//
//  UserModel.swift
//  EventApp 1
//
//  Created by Vitya SKR on 04/12/2021.
//  Copyright © 2021 Vitya SKR. All rights reserved.
//

import Foundation

struct UserModel: Codable {
    
    var email: String?
    var refreshToken: String?
    var expiresIn: String?
    var localId: String?
}
