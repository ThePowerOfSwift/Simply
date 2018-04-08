//
//  RoundedButton.swift
//  Simply
//
//  Created by Norbert Zborecki on 08/04/2018.
//  Copyright © 2018 Norbert Zborecki. All rights reserved.
//

import UIKit
@IBDesignable
class RoundedButton: UIButton {
    func setup() {
        self.layer.cornerRadius = self.frame.size.height / 2
    }
    
    /*override init(frame: CGRect) {
        super.init(frame: frame)
        setup()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        setup()
    } */
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setup()
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
