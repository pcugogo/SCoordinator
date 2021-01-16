//
//  OrangeViewController.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

final class OrangeViewController: UIViewController {
    
    var model: OrangeModel?
    
    private let stackView = UIStackView()
    private let navyButton = UIButton()
    private let greenButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAttributes()
        layoutViews()
    }
    
    deinit {
        print("OrangeViewController deinit")
    }
}

extension OrangeViewController {
    
    private func setAttributes() {
        
        self.view.backgroundColor = .orange
        
        self.navigationController?.navigationBar.topItem?.title  = "Orange"
        
        stackView.axis = .vertical
        
        navyButton.backgroundColor = .navy
        navyButton.addTarget(self, action: #selector(navyButtonAction), for: .touchUpInside)
        navyButton.setTitle("moveToNavy", for: .normal)
        navyButton.setTitleColor(.white, for: .normal)
        
        greenButton.backgroundColor = .green
        greenButton.addTarget(self, action: #selector(greenButtonAction), for: .touchUpInside)
        greenButton.setTitle("moveToGreen", for: .normal)
        greenButton.setTitleColor(.black, for: .normal)
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
        
        stackView.addArrangedSubviews([navyButton, greenButton])
    }
}

extension OrangeViewController {
    
    @objc func navyButtonAction() {
        model?.moveToNavy()
    }
    @objc func greenButtonAction() {
        model?.moveToGreen()
    }
}
