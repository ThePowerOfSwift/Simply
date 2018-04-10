//
//  LoginViewController.swift
//  Simply
//
//  Created by Norbert Zborecki on 10/04/2018.
//  Copyright © 2018 Norbert Zborecki. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {
    
    override var prefersStatusBarHidden: Bool {
        return true
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        let leftline = CAShapeLayer()
        leftline.path = UIBezierPath(roundedRect: CGRect(x: 25, y: 377, width: 123, height: 1), cornerRadius: 0).cgPath
        leftline.fillColor = UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0).cgColor
        view.layer.addSublayer(leftline)
        let rightline = CAShapeLayer()
        rightline.path = UIBezierPath(roundedRect: CGRect(x: 227, y: 377, width: 123, height: 1), cornerRadius: 0).cgPath
        rightline.fillColor = UIColor(red:0.96, green:0.96, blue:0.96, alpha:1.0).cgColor
        view.layer.addSublayer(rightline)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
