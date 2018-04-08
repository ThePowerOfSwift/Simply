//
//  Button.swift
//  Simply
//
//  Created by Norbert Zborecki on 08/04/2018.
//  Copyright © 2018 Norbert Zborecki. All rights reserved.
//

import UIKit
@IBDesignable
class Button: UIButton {
    override func layoutSubviews() {
        super.layoutSubviews()
        update()
    }
    
    func update() {
        guard let text = self.titleLabel?.text else { return }
        let attributedString = NSMutableAttributedString(string: text)
        attributedString.addAttribute(NSAttributedStringKey.underlineStyle, value: NSUnderlineStyle.styleSingle.rawValue, range: NSRange(location: 0, length: text.count))
        self.setAttributedTitle(attributedString, for: .normal)
    }
}
