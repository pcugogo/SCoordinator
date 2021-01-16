//
//  NavyModel.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2021/01/16.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import Foundation

final class NavyModel: BaseModel {
    
    func popView() {
        coordinator?.navigate(to: ExampleRoute.popView())
    }
}
