//
//  BlueViewController.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

final class BlueViewController: UIViewController {
    
    var model: BlueModel?
    
    private let stackView = UIStackView()
    private let changeRootViewButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAttributes()
        layoutViews()
    }
    
    deinit {
        print("BlueViewController deinit")
    }
}

extension BlueViewController {
    private func setAttributes() {
        
        self.view.backgroundColor = .blue
        
        stackView.axis = .vertical
        
        changeRootViewButton.backgroundColor = .orange
        changeRootViewButton.addTarget(self, action: #selector(changeRootViewButtonAction), for: .touchUpInside)
        changeRootViewButton.setTitle("To Login", for: .normal)
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
        
        stackView.addArrangedSubview(changeRootViewButton)
    }
}

extension BlueViewController {
    
    @objc func changeRootViewButtonAction() {
        model?.changeRoot()
    }
}
