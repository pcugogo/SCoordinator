//
//  RedCoordinator.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2021/01/16.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit
import SCoordinator

final class RedCoordinator: Coordinator<UINavigationController> {
    
    override func navigate(to route: Route) {
        guard let route = route as? ExampleRoute else { return }
        switch route {
        case .red:
            navigateToRed()
        case .yellow:
            navigateToYellow()
        case .blue:
            navigateToBlue()
        case .green:
            navigateToGreen()
        case .changeRoot:
            changeRoot()
        case .popView(let animated):
            rootView.popViewController(animated: animated)
        case let .dismiss(animated, completion):
            rootView.presentedViewController?.dismiss(animated: animated, completion: completion)
        default:
            break
        }
    }
}

extension RedCoordinator {
    
    private func navigateToRed() {
        let redModel = RedModel()
        redModel.coordinator = self
        let redTabBarItem: UITabBarItem = .init(
            title: "Red",
            image: nil,
            selectedImage: nil
        )
        let redViewController = RedViewController()
        rootView.tabBarItem = redTabBarItem
        redViewController.model = redModel
        rootView.viewControllers = [redViewController]
    }
    
    private func navigateToYellow() {
        let yellowViewController = YellowViewController()
        let model = YellowModel()
        model.coordinator = self
        yellowViewController.model = model
        rootView.pushViewController(yellowViewController, animated: true)
    }
    
    private func navigateToBlue() {
        let blueViewController = BlueViewController()
        let model = BlueModel()
        model.coordinator = self
        blueViewController.model = model
        rootView.pushViewController(blueViewController, animated: true)
    }
    
    private func navigateToGreen() {
        let greenViewController = GreenViewController()
        let model = GreenModel()
        model.coordinator = self
        greenViewController.model = model
        rootView.present(greenViewController, animated: true)
    }
    
    private func changeRoot() {
        (UIApplication.shared.delegate as? AppDelegate)?.rootViewChange(route: ExampleRoute.login)
    }
}

