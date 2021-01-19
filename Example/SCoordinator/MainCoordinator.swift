//
//  MainCoordinator.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import SCoordinator

final class MainCoordinator: Coordinator<MainViewController> {
    
    override func navigate(to route: Route) {
        guard let route = route as? ExampleRoute else { return }
        
        switch route {
        case .main:
            configureMain()
        default:
            break
        }
    }
}

extension MainCoordinator {
    
    private func configureMain() {
        let redNavigationController = UINavigationController()
        let orangeNavigationController = UINavigationController()
        
        let redCoordinator = RedCoordinator(rootView: redNavigationController)
        redCoordinator.start(with: self)
        redCoordinator.navigate(to: ExampleRoute.red)
        
        let orangeCoordinator = OrangeCoordinator(rootView: orangeNavigationController)
        orangeCoordinator.start(with: self)
        orangeCoordinator.navigate(to: ExampleRoute.orange)
        
        rootView.viewControllers = [
            redNavigationController,
            orangeNavigationController
        ]
    }
}
