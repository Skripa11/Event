//
//  FirebaseDataBase.swift
//  EventApp 1
//
//  Created by Vitya SKR on 05/12/2021.
//  Copyright © 2021 Vitya SKR. All rights reserved.
//

import Foundation

enum Request {
    
    case getUserData
    case putNewData(data: EventModel, currentDate: Int)
    case deleteData(index: Int)
}
