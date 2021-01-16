//
//  RedModel.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

final class RedModel: BaseModel {
    
    func moveToYellow() {
        coordinator.navigate(to: ExampleRoute.yellow)
    }
    
    func moveToGreen() {
        coordinator.navigate(to: ExampleRoute.green)
    }
}
