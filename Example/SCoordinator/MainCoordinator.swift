//
//  MainCoordinator.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import SCoordinator

final class MainCoordinator: Coordinator<UIViewController> {
    
    func navigate(to route: Route) {
        guard let route = route as? MainRoute else { return }
        
        switch route {
        case .yellow:
            navigateToYellow()
        case .green:
            navigateToGreen()
        }
    }
    
    func end(animated: Bool, completion: (() -> Void)?) {
        root.dismiss(animated: animated, completion: completion)
    }
    
    func pop(animated: Bool) {}
    
    deinit {
        print("\(String(describing: Self.self)) deinit")
    }
}

extension MainCoordinator {
    
    private func navigateToYellow() {
        let viewController = YellowViewController()
        let yellowNavigationController = UINavigationController(rootViewController: viewController)
        let yellowCoordinator = YellowCoordinator(root: yellowNavigationController)
        let model = YellowModel()
        model.setCoordinator(coordinator: yellowCoordinator)
        viewController.model = model
        root.present(yellowNavigationController, animated: true, completion: nil)
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
