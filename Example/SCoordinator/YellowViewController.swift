//
//  YellowViewController.swift
//  SCoordinator_Example
//
//  Created by ChanWook Park on 2020/12/22.
//  Copyright © 2020 CocoaPods. All rights reserved.
//

import UIKit

final class YellowViewController: UIViewController {
    
    var model: YellowModel?
    
    private let stackView = UIStackView()
    private let blueButton = UIButton()
    private let greenButton = UIButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setAttributes()
        layoutViews()
    }
    
    deinit {
        print("YellowViewController deinit")
    }
}

extension YellowViewController {
    
    private func setAttributes() {
        
        self.view.backgroundColor = .yellow
        
        stackView.axis = .vertical
        
        blueButton.backgroundColor = .blue
        blueButton.addTarget(self, action: #selector(blueButtonAction), for: .touchUpInside)
        blueButton.setTitle("moveToBlue", for: .normal)
        blueButton.setTitleColor(.black, for: .normal)
        
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
        
        stackView.addArrangedSubviews([blueButton, greenButton])
    }
}

extension YellowViewController {
    
    @objc func blueButtonAction() {
        model?.moveToBlue()
    }
    
    @objc func greenButtonAction() {
        model?.moveToGreen()
    }
}
