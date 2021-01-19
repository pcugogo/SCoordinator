//
//  OrangeCoordinator.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2021/01/16.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import SCoordinator

final class OrangeCoordinator: Coordinator<UINavigationController> {
    
    override func navigate(to route: Route) {
        guard let route = route as? ExampleRoute else { return }
        
        switch route {
        case .orange:
            navigateToOrange()
        case .navy:
            navigateToNavy()
        case .green:
            navigateToGreen()
        case .popView(let animated):
            rootView.popViewController(animated: animated)
        case let .dismiss(animated, completion):
            rootView.presentedViewController?.dismiss(animated: animated, completion: completion)
        default:
            break
        }
    }
}

extension OrangeCoordinator {
    
    private func navigateToOrange() {
        let orangeModel = OrangeModel()
        orangeModel.coordinator = self
        let orangeTabBarItem: UITabBarItem = .init(
            title: "Orange",
            image: nil,
            selectedImage: nil
        )
        let orangeViewController = OrangeViewController()
        rootView.tabBarItem = orangeTabBarItem
        orangeViewController.model = orangeModel
        rootView.viewControllers = [orangeViewController]
    }
    private func navigateToNavy() {
        let navyViewController = NavyViewController()
        let model = NavyModel()
        model.coordinator = self
        navyViewController.model = model
        rootView.pushViewController(navyViewController, animated: true)
    }
    private func navigateToGreen() {
        let greenViewController = GreenViewController()
        let model = GreenModel()
        model.coordinator = self
        greenViewController.model = model
        rootView.present(greenViewController, animated: true)
    }
}

