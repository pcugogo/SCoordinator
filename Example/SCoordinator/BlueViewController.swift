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
    private let changeRootViewButton = UIButton()
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
        
        changeRootViewButton.backgroundColor = .orange
        changeRootViewButton.addTarget(self, action: #selector(changeRootViewButtonAction), for: .touchUpInside)
        changeRootViewButton.setTitle("ChangeRoot", for: .normal)
        changeRootViewButton.setTitleColor(.black, for: .normal)
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
        
        stackView.addArrangedSubviews([popViewButton, changeRootViewButton])
    }
}

extension BlueViewController {
    
    @objc func popViewButtonAction() {
        model?.popView()
    }
    @objc func changeRootViewButtonAction() {
        model?.changeRoot()
    }
}
