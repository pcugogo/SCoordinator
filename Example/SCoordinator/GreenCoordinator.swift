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
    func end(animated: Bool, completion: (() -> Void)?) {
        rootView.dismiss(animated: animated, completion: completion)
    }
    
    deinit {
        print("\(String(describing: Self.self)) deinit")
    }
}
