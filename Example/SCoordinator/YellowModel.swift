//
//  YellowModel.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

final class YellowModel: BaseModel {
    
    func moveToBlue() {
        coordinator?.navigate(to: ExampleRoute.blue)
    }
    
    func moveToGreen() {
        coordinator?.navigate(to: ExampleRoute.green)
    }
}
