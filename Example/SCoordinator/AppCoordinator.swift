//
//  AppCoordinator.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import SCoordinator

final class AppCoordinator: RootCoordinator<UIWindow> {
    
    override func navigate(to route: Route) {
        childrens.removeAll()
        guard let exampleRoute = route as? ExampleRoute else { return }
        switch exampleRoute {
        case .main:
            navigateToMain()
        case .login:
            navigateToLogin()
        default:
            break
        }
    }
}

extension AppCoordinator {
    private func navigateToMain() {
        
        let mainViewController = MainViewController()
        let mainCoordinator = MainCoordinator(rootView: mainViewController)
        mainCoordinator.start(with: self)
        mainCoordinator.navigate(to: ExampleRoute.main)
        
        rootView.rootViewController = mainViewController
        rootView.makeKeyAndVisible()
    }
    
    private func navigateToLogin() {
        
        let loginViewController = LoginViewController()
        let model = LoginModel()
        model.coordinator = self
        loginViewController.model = model
        
        rootView.rootViewController = loginViewController
        rootView.makeKeyAndVisible()
    }
}
