//
//  CustomLabel.swift
//  EventApp 1
//
//  Created by Vitya SKR on 24/11/2021.
//  Copyright © 2021 Vitya SKR. All rights reserved.
//

import UIKit

extension UILabel {
    
    public static func setupLabel(with font: UIFont, tintColor: UIColor, line number: Int) -> UILabel {
        let label = UILabel(frame: .zero)
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textAlignment = .left
        label.numberOfLines = number
        label.textColor = tintColor
        
        label.font = font
        return label
    }
}
