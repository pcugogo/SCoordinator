//
//  BlueModel.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

final class BlueModel: BaseModel {
    
    func popView() {
        coordinator.end(type: .popView(animated: true))
    }
}
