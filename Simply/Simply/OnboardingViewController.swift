//
//  OnboardingViewController.swift
//  Simply
//
//  Created by Norbert Zborecki on 08/04/2018.
//  Copyright © 2018 Norbert Zborecki. All rights reserved.
//

import UIKit
class OnboardingViewController: UIViewController, UIScrollViewDelegate {
    @IBOutlet weak var OBGPageControl: UIPageControl!
    @IBOutlet weak var OBGScrollView: UIScrollView!
    let a = ["image":"A_illustration", "title":"EXPLORE", "description":"Find suitable product for your fashion style easily by swipe and scroll"]
    let b = ["image":"B_illustration", "title":"PAY IT", "description":"Process payment for your purchased items with your lovely payment method."]
    let c = ["image":"C_illustration", "title":"FAST DELIVERY", "description":"Within our dedicated delivery partner you’ll get your items fastly."]
    var abc = [Dictionary<String,String>]()
    
    override var prefersStatusBarHidden: Bool {
        return true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        abc = [a,b,c]
        // SCROLL VIEW
        OBGScrollView.isPagingEnabled = true
        OBGScrollView.contentSize = CGSize(width: self.view.bounds.width * CGFloat(abc.count), height: 287)
        OBGScrollView.showsHorizontalScrollIndicator = false
        OBGScrollView.delegate = self
        // PAGE CONTROL
        OBGPageControl.transform = CGAffineTransform(scaleX: 1, y: 1)
        Illustrations()
    }

    func Illustrations() {
        for (index, illustrations) in abc.enumerated() {
            if let abcView = Bundle.main.loadNibNamed("sView", owner: self, options: nil)?.first as? sUIView {
                abcView.illustration.image = UIImage(named: illustrations["image"]!)
                abcView.title.text = illustrations["title"]
                abcView.desc.text = illustrations["description"]
                OBGScrollView.addSubview(abcView)
                abcView.frame.size.width = self.view.bounds.size.width
                abcView.frame.origin.x = CGFloat(index) * self.view.bounds.size.width
            }
        }
    }
    
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let page = scrollView.contentOffset.x / scrollView.frame.size.width
        OBGPageControl.currentPage = Int(page)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
