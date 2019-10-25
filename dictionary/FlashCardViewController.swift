//
//  FlashCardViewController.swift
//  dictionary
//
//  Created by Do Xuan Thanh on 10/16/19.
//  Copyright © 2019 monstar-lab. All rights reserved.
//

import UIKit

class FlashCardViewController: UIViewController {

    @IBOutlet weak var fliterView: FilterView!
    @IBOutlet weak var frontCardView: UIView!
    @IBOutlet weak var backCardView: UIView!
    @IBOutlet weak var backViewText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        frontCardView.isHidden = false
        backCardView.isHidden = true
        backViewText.text = "AAA"
        let tab = UITapGestureRecognizer(target: self, action: #selector(flipOver(_ :)))
        view.addGestureRecognizer(tab)
        let swipe = UISwipeGestureRecognizer(target: self, action: #selector(nextCard(_ :)))
        view.addGestureRecognizer(swipe)
    }
    
    @objc func flipOver(_ sender: UITapGestureRecognizer? = nil) {
        let isShown = (frontCardView.isHidden ? backCardView : frontCardView)!
        let isHidden = (frontCardView.isHidden ? frontCardView  : backCardView)!
        UIView.transition(from: isShown, to: isHidden, duration: 1.0, options: [.transitionFlipFromRight, .showHideTransitionViews], completion: nil)
    }
    
    @objc func nextCard(_ sender: UISwipeGestureRecognizer? = nil) {
        UIView.transition(with: backCardView, duration: 0.5, options: [.curveEaseIn], animations: {
            self.backViewText.text = "BBB"
        }, completion: nil)
    }

}
