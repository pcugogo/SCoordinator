//
//  MainViewController.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

final class MainViewController: UITabBarController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    deinit {
        print("\(String(describing: Self.self)) deinit")
    }
}

extension MainViewController {
    
    func setAttributes(redModel: RedModel, orangeModel: OrangeModel) {
        
        let redTabBarItem: UITabBarItem = .init(
            title: "Red",
            image: nil,
            selectedImage: nil
        )
        let orangeTabBarItem: UITabBarItem = .init(
            title: "Orange",
            image: nil,
            selectedImage: nil
        )
        
        let redViewController = RedViewController()
        let orangeViewController = OrangeViewController()
        
        redViewController.tabBarItem = redTabBarItem
        orangeViewController.tabBarItem = orangeTabBarItem
        
        redViewController.model = redModel
        orangeViewController.model = orangeModel
        
        viewControllers = [
            orangeViewController,
            redViewController
        ]
    }
}
