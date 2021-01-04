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
    
    override func navigate(to route: Route) {
        guard let route = route as? YellowRoute else { return }
        
        switch route {
        case .blue:
            navigateToBlue()
        case .green:
            navigateToGreen()
        case .changeRoot:
            changeRoot()
        }
    }
    
    deinit {
        print("\(String(describing: Self.self)) deinit")
    }
}

extension YellowCoordinator {
    
    private func navigateToBlue() {
        let blueViewController = BlueViewController()
        let model = BlueModel()
        model.setCoordinator(self)
        blueViewController.model = model
        rootView.pushViewController(blueViewController, animated: true)
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
    
    private func changeRoot() {
        let mainViewController = MainViewController()
        let mainCoordinator = MainCoordinator(rootView: mainViewController)
        
        let redModel = RedModel()
        redModel.setCoordinator(mainCoordinator)
        
        let orangeModel = OrangeModel()
        orangeModel.setCoordinator(mainCoordinator)
        
        mainViewController.setAttributes(redModel: redModel, orangeModel: orangeModel)
        
        UIApplication.shared.keyWindow?.rootViewController?.dismiss(animated: false, completion: nil)
        UIApplication.shared.keyWindow?.rootViewController = mainViewController
        mainCoordinator.change(for: rootCoordinator)
    }
}

