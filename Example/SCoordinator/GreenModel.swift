//
//  GreenModel.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import Foundation

final class GreenModel: BaseModel {
    
    func dismiss() {
        coordinator?.navigate(to: ExampleRoute.dismiss())
    }
}
