//
//  BlueViewController.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

final class BlueViewController: BaseViewController {
    
    var model: BlueModel?
    
    private let stackView = UIStackView()
    private let popViewButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAttributes()
        layoutViews()
    }
}

extension BlueViewController {
    private func setAttributes() {
        
        self.view.backgroundColor = .blue
        
        stackView.axis = .vertical
        
        popViewButton.backgroundColor = .yellow
        popViewButton.addTarget(self, action: #selector(popViewButtonAction), for: .touchUpInside)
        popViewButton.setTitle("PopView", for: .normal)
        popViewButton.setTitleColor(.black, for: .normal)
    }
    
    private func layoutViews() {
        
        self.view.addSubview(stackView)
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        NSLayoutConstraint.activate(
            [
                stackView.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
                stackView.centerYAnchor.constraint(equalTo: self.view.centerYAnchor)
            ]
        )
        
        stackView.addArrangedSubview(popViewButton)
    }
}

extension BlueViewController {
    
    @objc func popViewButtonAction() {
        model?.popView()
    }
}
