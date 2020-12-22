//
//  GreenViewController.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

final class GreenViewController: BaseViewController {
    
    var model: GreenModel?
    
    private let stackView = UIStackView()
    private let dismissButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAttributes()
        layoutViews()
    }
}

extension GreenViewController {
    
    private func setAttributes() {
        
        self.view.backgroundColor = .green
        
        stackView.axis = .vertical
        
        dismissButton.backgroundColor = .white
        dismissButton.addTarget(self, action: #selector(dismissButtonAction), for: .touchUpInside)
        dismissButton.setTitle("Dismiss", for: .normal)
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

extension GreenViewController {
    @objc func dismissButtonAction() {
        model?.dismiss()
    }
}
