//
//  Coordinator.swift
//  SCoordinator
//
//  Created by ChanWook Park on 2020/12/22.
//

import UIKit

public typealias Coordinator<Root: RootType> = BaseCoordinator<Root> & CoordinatorType

open class BaseCoordinator<Root: RootType> {
    public unowned var root: Root!
    
    public init(root: Root) {
        self.root = root
    }
}
