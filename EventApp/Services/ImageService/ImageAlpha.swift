//
//  ImageAlpha.swift
//  EventApp 1
//
//  Created by Vitya SKR on 27/11/2021.
//  Copyright © 2021 Vitya SKR. All rights reserved.
//

import UIKit

extension UIImage {

    func alpha(_ value:CGFloat) -> UIImage {
        UIGraphicsBeginImageContextWithOptions(size, false, scale)
        draw(at: CGPoint.zero, blendMode: .normal, alpha: value)
        let newImage = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return newImage!
    }
}
