//
//  OrangeModel.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

final class OrangeModel: BaseModel {
    
    func moveToNavy() {
        coordinator?.navigate(to: ExampleRoute.navy)
    }
    
    func moveToGreen() {
        coordinator?.navigate(to: ExampleRoute.green)
    }
}
