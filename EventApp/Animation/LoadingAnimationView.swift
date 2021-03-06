//
//  LoadingAnimationView.swift
//  EventApp 1
//
//  Created by Vitya SKR on 04/12/2021.
//  Copyright © 2021 Vitya SKR. All rights reserved.
//

import UIKit

class LoadingAnimationView: UIView {
    
    var startLocations : [NSNumber] = [-1.0,-0.5, 0.0]
    var endLocations : [NSNumber] = [1.0,1.5, 2.0]
    
    var gradientBackgroundColor : CGColor = UIColor(white: 0.5, alpha: 1.0).cgColor
    var gradientMovingColor : CGColor = UIColor(white: 0.7, alpha: 1.0).cgColor
    
    var movingAnimationDuration : CFTimeInterval = 0.8
    var delayBetweenAnimationLoops : CFTimeInterval = 0.9
    

    lazy var gradientLayer : CAGradientLayer = {
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.bounds
        gradientLayer.startPoint = CGPoint(x: 0.0, y: 1.0)
        gradientLayer.endPoint = CGPoint(x: 1.0, y: 1.0)
        gradientLayer.colors = [
            gradientBackgroundColor,
            gradientMovingColor,
            gradientBackgroundColor
        ]
        gradientLayer.locations = self.startLocations
        self.layer.addSublayer(gradientLayer)
        return gradientLayer
    }()
    
    
    func startAnimating(){
        let animation = CABasicAnimation(keyPath: "locations")
        animation.fromValue = self.startLocations
        animation.toValue = self.endLocations
        animation.duration = self.movingAnimationDuration
        animation.timingFunction = CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeInEaseOut)
        
        
        let animationGroup = CAAnimationGroup()
        animationGroup.duration = self.movingAnimationDuration + self.delayBetweenAnimationLoops
        animationGroup.animations = [animation]
        animationGroup.repeatCount = .infinity
        self.gradientLayer.add(animationGroup, forKey: animation.keyPath)
    }
    
    func stopAnimating() {
        self.gradientLayer.removeAllAnimations()
    }
    
}
