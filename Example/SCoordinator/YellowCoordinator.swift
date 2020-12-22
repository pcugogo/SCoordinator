//
//  YellowCoordinator.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import SCoordinator

final class YellowCoordinator: Coordinator<UINavigationController> {
    
    func navigate(to route: Route) {
        guard let route = route as? YellowRoute else { return }
        
        switch route {
        case .blue:
            navigateToBlue()
        case .green:
            navigateToGreen()
        }
    }
    
    func end(animated: Bool, completion: (() -> Void)?) {
        root.dismiss(animated: animated, completion: completion)
    }
    
    func pop(animated: Bool) {
        root.popViewController(animated: animated)
    }
    
    deinit {
        print("\(String(describing: Self.self)) deinit")
    }
}

extension YellowCoordinator {
    
    private func navigateToBlue() {
        let blueViewController = BlueViewController()
        let model = BlueModel()
        model.setCoordinator(coordinator: self)
        blueViewController.model = model
        root.pushViewController(blueViewController, animated: true)
    }
    
    private func navigateToGreen() {
        let greenViewController = GreenViewController()
        let greenCoordinator = GreenCoordinator(root: greenViewController)
        let model = GreenModel()
        model.setCoordinator(coordinator: greenCoordinator)
        greenViewController.model = model
        root.present(greenViewController, animated: true)
    }
}
