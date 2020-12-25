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
    
    override func navigate(to route: Route) {
        
        let mainViewController = MainViewController()
        let mainCoordinator = MainCoordinator(rootView: mainViewController)
        
        let redModel = RedModel()
        redModel.setCoordinator(mainCoordinator)
        
        let orangeModel = OrangeModel()
        orangeModel.setCoordinator(mainCoordinator)
        
        mainViewController.setAttributes(redModel: redModel, orangeModel: orangeModel)
        
        rootView.rootViewController = mainViewController
        rootView.makeKeyAndVisible()
    }
    
    func end(animated: Bool, completion: (() -> Void)?) {}
    func pop(animated: Bool) {}
}
