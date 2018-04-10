//
//  RoundedButtonV2.swift
//  Simply
//
//  Created by Norbert Zborecki on 10/04/2018.
//  Copyright © 2018 Norbert Zborecki. All rights reserved.
//

import UIKit
@IBDesignable
class RoundedButtonV2: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        setup()
    }
    
    func setup() {
        self.layer.cornerRadius = self.frame.size.height / 2
        let gradient = CAGradientLayer()
        gradient.frame = bounds
        gradient.colors = [UIColor(red:0.14, green:0.74, blue:0.73, alpha:1.0).cgColor, UIColor(red:0.27, green:0.91, blue:0.58, alpha:1.0).cgColor]
        gradient.cornerRadius = layer.cornerRadius
        gradient.startPoint = CGPoint(x: 0, y: 0.5)
        gradient.endPoint = CGPoint (x: 1, y: 0.5)
        gradient.locations = [0.0, 1.0]
        layer.insertSublayer(gradient, at: 0)
    }
    
    override var isHighlighted: Bool {
        didSet{
            if (isHighlighted) {
                self.alpha = 0.95
            } else {
                self.alpha = 1
            }
        }
    }
}
