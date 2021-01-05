//
//  GreenCoordinator.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit
import SCoordinator

final class GreenCoordinator : Coordinator<UIViewController> {
    
    override func navigate(to route: Route) {}
    
    deinit {
        print("\(String(describing: Self.self)) deinit")
    }
}
