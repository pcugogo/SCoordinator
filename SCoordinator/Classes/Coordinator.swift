//
//  Coordinator.swift
//  SCoordinator
//
//  Created by ChanWook Park on 2020/12/22.
//

import Foundation

open class Coordinator<RootView: RootViewType>: BaseCoordinator<RootView> {
    
    public init(rootView: RootView) {
        super.init()
        self.rootView = rootView
    }
    
    public func start(with parentCoordinator: ParentCoordinator) {
        if let rootCoordinator = parentCoordinator.rootCoordinator {
            self.rootCoordinator = rootCoordinator
        } else {
            rootCoordinator = parentCoordinator
        }
        setParent(with: parentCoordinator)
    }
    
    public override func end(type: EndType) {
        switch type {
        case let .dismiss(animated, completion):
            if let viewController = rootView as? UIViewController {
                viewController.dismiss(animated: animated, completion: completion)
                self.parent?.childrens.removeValue(forKey: String(describing: Self.self))
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
    
    public func change(for rootCoordinator: ParentCoordinator) {
        rootCoordinator.childrens.removeAll()
        self.rootCoordinator = rootCoordinator
        setParent(with: rootCoordinator)
    }
    
    private func setParent(with coordinator: ParentCoordinator) {
        parent = coordinator
        let childKey = String(describing: Self.self)
        parent?.childrens[childKey] = self
    }
}

