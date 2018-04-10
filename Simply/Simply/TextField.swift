//
//  TextField.swift
//  Simply
//
//  Created by Norbert Zborecki on 10/04/2018.
//  Copyright © 2018 Norbert Zborecki. All rights reserved.
//

import UIKit
@IBDesignable
class TextField: UITextField {
    
    func update() {
        let lpadding = UIView(frame: CGRect(x: 0, y: 0, width: 15, height: self.layer.frame.height))
        self.leftView = lpadding
        self.leftViewMode = .always
        self.borderStyle = .none
        self.layer.cornerRadius = 4
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor(red:0.78, green:0.81, blue:0.81, alpha:1.0).cgColor
        self.addTarget(self, action: #selector(active(_sender:)), for: UIControlEvents.editingDidBegin)
        self.addTarget(self, action: #selector(inactive(_sender:)), for: UIControlEvents.editingDidEnd)
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        update()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        update()
    }
    
    @objc func active(_sender: Any) {
        self.layer.borderColor = UIColor(red:0.14, green:0.74, blue:0.73, alpha:1.0).cgColor
        self.textColor = UIColor(red:0.14, green:0.74, blue:0.73, alpha:1.0)
    }
    
    @objc func inactive(_sender: Any) {
        self.layer.borderColor = UIColor(red:0.78, green:0.81, blue:0.81, alpha:1.0).cgColor
        self.textColor = UIColor(red:0.75, green:0.75, blue:0.75, alpha:1.0)
    }
}
