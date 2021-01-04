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
    
    public func change(for rootCoordinator: ParentCoordinator) {
        rootCoordinator.childrens.removeAll()
        self.rootCoordinator = rootCoordinator
        setParent(with: rootCoordinator)
    }
    
    private func setParent(with coordinator: ParentCoordinator) {
        parent = coordinator
        let childKey = String(describing: Self.self)
        parent.childrens[childKey] = self
    }
}

