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
    
    func navigate(to route: Route) {}
    func end(animated: Bool, completion: (() -> Void)?) {
        root.dismiss(animated: animated, completion: completion)
    }
    func pop(animated: Bool) {}
    deinit {
        print("\(String(describing: Self.self)) deinit")
    }
}
