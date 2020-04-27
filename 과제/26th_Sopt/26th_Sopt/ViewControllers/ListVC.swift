//
//  ListVC.swift
//  26th_Sopt
//
//  Created by 김현지 on 2020/04/27.
//  Copyright © 2020 김현지. All rights reserved.
//

import UIKit

class ListVC: UIViewController, UIScrollViewDelegate {

    @IBOutlet var scrollView: UIScrollView!
    @IBOutlet var headerViewHeight: NSLayoutConstraint!
    @IBOutlet var headerImage: UIImageView!
    @IBOutlet var contentView: UIView!
    
    let scrollTopEdgeInsets: CGFloat = 210
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scrollView.delegate = self
        scrollView.contentInsetAdjustmentBehavior = .never
        // Do any additional setup after loading the view.
    }
    

    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        let yPosition = scrollView.contentOffset.y
        
        if yPosition < 0 {
            headerViewHeight.constant = scrollTopEdgeInsets - yPosition
        } else {
            print(scrollTopEdgeInsets - yPosition)
            if scrollTopEdgeInsets - yPosition > 105 {
                headerViewHeight.constant = scrollTopEdgeInsets - yPosition
            } else {
                headerViewHeight.constant = 105
                
            }
        }
    }
    
    

}
