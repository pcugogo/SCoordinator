//
//  AppCoordinator.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import SCoordinator
import UIKit

final class AppCoordinator: Coordinator<UIWindow> {
    
    func navigate(to route: Route) {
        let mainViewController = MainViewController()
        let mainCoordinator = MainCoordinator(root: mainViewController)
        
        let redModel = RedModel()
        redModel.setCoordinator(coordinator: mainCoordinator)
        
        let orangeModel = OrangeModel()
        orangeModel.setCoordinator(coordinator: mainCoordinator)
        
        mainViewController.setAttributes(redModel: redModel, orangeModel: orangeModel)
        root?.rootViewController = mainViewController
        root?.makeKeyAndVisible()
    }
    
    func end(animated: Bool, completion: (() -> Void)?) {}
    func pop(animated: Bool) {}
}
