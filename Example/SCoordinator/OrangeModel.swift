//
//  OrangeModel.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

final class OrangeModel: BaseModel {
    
    func moveToYellow() {
        coordinator.navigate(to: MainRoute.yellow)
    }
    
    func moveToGreen() {
        coordinator.navigate(to: MainRoute.green)
    }
}
