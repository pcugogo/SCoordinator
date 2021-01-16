//
//  AppRoute.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import SCoordinator

enum ExampleRoute: Route {
    
    // Main
    case main
    
    // Login
    case login
    // Red
    case red
    case yellow
    case blue
    case green
    case changeRoot
    
    // Orange
    case orange
    case navy
    
    // Common
    case popView(animated: Bool = true)
    case dismiss(animated: Bool = true, completion: (() -> Void)? = nil)
}
