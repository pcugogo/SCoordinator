//
//  UIStackView+addArrangedSubviews.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/23.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

extension UIStackView {
    func addArrangedSubviews(_ views: [UIView]) {
        for view in views {
            self.addArrangedSubview(view)
        }
    }
}
