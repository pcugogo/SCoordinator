//
//  NavyViewController.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2021/01/16.
//  Copyright © 2021 CocoaPods. All rights reserved.
//

import UIKit

final class NavyViewController: UIViewController {
    
    var model: NavyModel?
    
    private let stackView = UIStackView()
    private let dismissButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAttributes()
        layoutViews()
    }
    
    deinit {
        print("NavyViewController deinit")
    }
}

extension NavyViewController {
    
    private func setAttributes() {
        
        self.view.backgroundColor = .navy
        
        stackView.axis = .vertical
        
        dismissButton.backgroundColor = .orange
        dismissButton.addTarget(self, action: #selector(dismissButtonAction), for: .touchUpInside)
        dismissButton.setTitle("PopView", for: .normal)
        dismissButton.setTitleColor(.black, for: .normal)
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
        
        stackView.addArrangedSubview(dismissButton)
    }
}

extension NavyViewController {
    @objc func dismissButtonAction() {
        model?.popView()
    }
}
