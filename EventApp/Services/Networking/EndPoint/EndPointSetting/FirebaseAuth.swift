//
//  FirebaseAuth.swift
//  EventApp 1
//
//  Created by Vitya SKR on 05/12/2021.
//  Copyright © 2021 Vitya SKR. All rights reserved.
//

import Foundation

public enum Auth {
    case signUp(email: String, password: String)
    case signIn(email: String, password: String)
}
