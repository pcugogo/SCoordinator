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
        coordinator.navigate(to: YellowRoute.blue)
    }
    
    func moveToGreen() {
        coordinator.navigate(to: YellowRoute.green)
    }
    
    func dismiss() {
        coordinator.end(animated: true, completion: nil)
    }
}
