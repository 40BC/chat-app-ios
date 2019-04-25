//
//  GradientView.swift
//  Smack
//
//  Created by Brandon Criss on 4/23/19.
//  Copyright © 2019 Brandon Criss. All rights reserved.
//

import UIKit

@IBDesignable // render inside storyboard
class GradientView: UIView {
    
    @IBInspectable var topColor: UIColor = #colorLiteral(red: 0.2395215631, green: 0.3320434093, blue: 0.7513638139, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    @IBInspectable var bottomColor: UIColor = #colorLiteral(red: 0.1725490196, green: 0.831372549, blue: 0.8470588235, alpha: 1) {
        didSet {
            self.setNeedsLayout()
        }
    }
    
    override func layoutSubviews() {
        // update view layout from setNeedsLayout()
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [topColor.cgColor, bottomColor.cgColor]
        // look into iOS Coordinate System ie, (0,0) is top-left
        gradientLayer.startPoint = CGPoint(x: 0, y: 0)
        gradientLayer.endPoint = CGPoint(x: 1, y: 1)
        gradientLayer.frame = self.bounds // size of current view
        self.layer.insertSublayer(gradientLayer, at: 0)
    }
    
}
