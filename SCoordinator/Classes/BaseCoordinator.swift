//
//  BaseCoordinator.swift
//  SCoordinator
//
//  Created by ChanWook Park on 2020/12/28.
//

import Foundation

open class BaseCoordinator<RootView: RootViewType>: CoordinatorType, ParentCoordinator {
    
    // Root View of the current coordinator.
    public unowned var rootView: RootView!
    
    // Root coordinator of the current coordinator.
    public unowned var rootCoordinator: ParentCoordinator!
    
    // Parent coordinator of the current coordinator.
    internal unowned var parent: ParentCoordinator!
    
    // Childrens coordinator of the current coordinator.
    public var childrens: [String:CoordinatorType] = [:]
    
    open func navigate(to route: Route) {}
    
    public func end(type: EndType) {
        switch type {
        case let .dismiss(animated, completion):
            if let viewController = rootView as? UIViewController {
                viewController.dismiss(animated: animated, completion: completion)
                self.parent.childrens.removeValue(forKey: String(describing: Self.self))
            } else {
                NSLog("ERROR: - The RootView of **\(String(describing: Self.self))** is not a UIViewController type.")
            }
        case let .popView(animated):
            if let navigationController = rootView as? UINavigationController {
                navigationController.popViewController(animated: animated)
            } else {
                NSLog("ERROR: - The RootView of **\(String(describing: Self.self))** is not a UINavigationController type.")
            }
        }
    }
}

