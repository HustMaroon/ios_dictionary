//
//  UIPageViewController.swift
//  dictionary
//
//  Created by Do Xuan Thanh on 10/25/19.
//  Copyright © 2019 monstar-lab. All rights reserved.
//

import UIKit

class PageViewController: UIPageViewController {

//    required init?(coder: NSCoder) {
//        super.init(transitionStyle: .scroll, navigationOrientation: .horizontal, options: nil)
//    }

    override func viewDidLoad() {
        super.viewDidLoad()
        dataSource = self
        setViewControllers([cardAt(0)], direction: .forward, animated: false, completion: nil)
    }

}

extension PageViewController : UIPageViewControllerDataSource {
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? FlashCardViewController,
            let pageIndex = viewController.pageIndex,
            pageIndex > 0 else {
                return nil
        }
        return cardAt(pageIndex - 1)
    }
    
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        guard let viewController = viewController as? FlashCardViewController,
            let pageIndex = viewController.pageIndex,
            pageIndex + 1 < data.count else {
                return nil
        }
        return cardAt(pageIndex + 1)
    }
    
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        data.count
    }
    
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        guard let viewControllers = pageViewController.viewControllers,
            let currentVC = viewControllers.first as? FlashCardViewController,
            let currentIndex = currentVC.pageIndex else {
                return 0
        }
        return currentIndex
    }
    
    func cardAt(_ page: Int) -> UIViewController {
        let flashcardViewController: FlashCardViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "flashCardViewController")
        flashcardViewController.pageIndex = page
        return flashcardViewController
    }
}
