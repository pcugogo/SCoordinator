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
    
    override func navigate(to route: Route) {
        guard let route = route as? MainRoute else { return }
        
        switch route {
        case .yellow:
            navigateToYellow()
        case .green:
            navigateToGreen()
        }
    }
    
    deinit {
        print("\(String(describing: Self.self)) deinit")
    }
}

extension MainCoordinator {
    
    private func navigateToYellow() {
        let viewController = YellowViewController()
        let yellowNavigationController = UINavigationController(rootViewController: viewController)
        let yellowCoordinator = YellowCoordinator(rootView: yellowNavigationController)
        yellowCoordinator.start(with: self)
        let model = YellowModel()
        model.setCoordinator(yellowCoordinator)
        viewController.model = model
        rootView.present(yellowNavigationController, animated: true, completion: nil)
    }
    
    private func navigateToGreen() {
        let greenViewController = GreenViewController()
        let greenCoordinator = GreenCoordinator(rootView: greenViewController)
        greenCoordinator.start(with: self)
        let model = GreenModel()
        model.setCoordinator(greenCoordinator)
        greenViewController.model = model
        rootView.present(greenViewController, animated: true)
    }
}
